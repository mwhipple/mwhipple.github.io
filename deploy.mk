##
# <p>
# This site is deployed to
# <a href="https://cloud.google.com/run"
#    title="Cloud Run | Google Cloud"
#    data-date="2024-01-20">Google Cloud Run</a>
# using an
# <a href="https://hub.docker.com/_/nginx"
#    title="nginx - Official Image | Docker Hub"
#    data-date="2024-01-22">nginx docker image</a>
# with overlaid content and configuration.
# </p><p>
# Cloud Run was adopted since it is a technology I use for some
# professional projects and was therefore able to reuse some experience.
# </p><p>
# Additionally
# <a href="https://en.wikipedia.org/wiki/Nginx"
#    title="Nginx - Wikipedia"
#    data-date="2024-01-29">nginx</a>
# is a technology which fits in to some of my other goals,
# and while alternatives such as publishing static files only may seem simpler
# they are also less transparent and more limiting in terms of some basic
# functionality such as
# <a href="https://en.wikipedia.org/wiki/Content_negotiation"
#    title="Content negotiation - Wikipedia"
#    data-date="2024-01-22">content negotiation</a>
# which can facilitate logical URLs which are more easily kept
# <a href="https://www.w3.org/Provider/Style/URI"
#    title="Hypertext Style: Cool URIs don't change."
#    data-date="2024-01-22">cool</a>.
# </p>
##

##
# <p>
# The build requires
# <a href="https://docs.docker.com/engine/reference/commandline/cli/"
#    title="Use the Docker command line | Docker Docs"
#    data-date="2024-01-30">docker CLI</a>
# (or compatible) to produce the images, and the
# <a href="https://cloud.google.com/cli
#    title="Command Line Interface Gcloud Cli | Google Cloud"
#    data-date="2024-01-25">gcloud CLI</a>
# to autenticate with the artifact registry and trigger updates.
# </p><p>
# Those dependencies are defined here for possible overriding
# or extensibility such as more sophisticated feedback.
# </p>
## <pre>

DOCKER      := docker
GCLOUD      := gcloud

## </pre>
# <p>Generated files will be placed in a conventional
# "build" directory to keep things tidier and cleanup more simple.</p>
## <pre>

BUILD_DIR := build
$(BUILD_DIR): ; mkdir -p $(@)

## </pre>
# <p>Define the logical name of the service for use elsewhere.</p>
## <pre>

SERVICE_NAME := mweb

## </pre>
# <p>The tag for the image will be generated based on the current git
# ref. As a side effect changes should be committed prior to
# building.
# </p><p>
# A pattern I often use elsewhere is to add an additional qualifier
# to the tag if the working directory contains any uncommitted changes
# which guards against inadvertently pushing an image
# which has local changes that deviate from what is reflected in the
# repository (and therefore having a misleading tag). Given the
# sole authorship of the content and the nature of the project itself
# (i.e. that it is primarily content rather than logic), I am
# dispensing with that additional logic for the time being.
## <pre>

IMAGE_TAG := $(call shell,git rev-parse --verify --short HEAD)

## </pre>
# <p>Define the image name based on the SERVICE_NAME and derived tag.</p>
## <pre>

IMAGE      = $(SERVICE_NAME):$(IMAGE_TAG)

## <pre>
# <p>Build the image as necessary. This makes use of the iid file to act
# as a marker. The prerequisites at this point are fairly loose and likely
# to be refined over time.</p>
## </pre>

$(BUILD_DIR)/%.iid: Dockerfile $(wildcard *) | $(BUILD_DIR)
	$(DOCKER) build --tag $(*) --iidfile $(@) .

## </pre>
# <p>
# Provide a phony alias for building the image.
# </p><p>
# This makes use of a pattern which will defined elsewhere which invokes a submake
# for the sake of a dynamic precondition without requiring secondary expansion.
# </p>
## <pre>
image: ; $(MAKE) $(BUILD_DIR)/$(IMAGE).iid site
.PHONY: image

## </pre>
# <p>
# Deployment relies upon pushing the image to a repository.
# This was done manually rather than making use of a tool such as
# infrastructure-as-code, where a repository was created within
# Artifact Registry (which must be enabled) using the
# <a href="https://console.cloud.google.com"
#    title="Google Cloud Console"
#    data-date="2024-02-01">Google Cloud Console</a>.
# The Google Container Registry is an older, deprecated alternative but the
# one I tend to stumble across first and then notice the deprecation warning.
# </p><p>
# I have also enabled immutable tags to enforce clearer traceabililty of image contents.
# </p><p>
# The region is selected as one that is geographically close to where I am located
# and also one of those indicated as low emission. This in turn is used to compose
# the host for the registry.
# </p>
## <pre>

REGION        := us-central1
PUSH_REGISTRY := $(REGION)-docker.pkg.dev

GCP_PROJECT   := mweb-411216
GCP_SERVICE   := mweb
GCP_COMPONENT := www

##
# Configure service account and grant access by principal
# Provdie principal with impersonate permission
# Provide SA principal with missing permissions
##

PUSH_REPO_PATH := $(PUSH_REGISTRY)/$(GCP_PROJECT)/$(GCP_COMPONENT)

PUSH_SA := mweb-569@mweb-411216.iam.gserviceaccount.com

GCP_AUTH := --impersonate-service-account=$(PUSH_SA)

#logged-in: ; #$(GCLOUD) auth login

$(BUILD_DIR)/pushed-%: $(BUILD_DIR)/%.iid | $(BUILD_DIR)
	$(DOCKER) tag $(*) $(PUSH_REPO_PATH)/$(*)
	$(GCLOUD) auth print-access-token $(GCP_AUTH) \
		| $(DOCKER) login -u oauth2accesstoken --password-stdin $(PUSH_REGISTRY)
	$(DOCKER) push $(PUSH_REPO_PATH)/$(*) > $(@)

push-image: ; $(MAKE) $(BUILD_DIR)/pushed-$(IMAGE)
.PHONY: push-image

##
# Configure custom domain
# Using beta cloud run domain mappings tucked away in the console a bit.
##

# Added Cloud Run Admin
# 

$(BUILD_DIR)/deployed-%: $(BUILD_DIR)/pushed-%
	$(GCLOUD) $(GCP_AUTH) --project=$(GCP_PROJECT) \
	run deploy $(GCP_SERVICE) \
	--image=$(PUSH_REPO_PATH)/$(*) --region=$(REGION)
deploy: ; $(MAKE) $(BUILD_DIR)/deployed-$(IMAGE)
.PHONY: deploy
