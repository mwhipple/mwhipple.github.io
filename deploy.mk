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
# Additionally nginx is a technology which fits in to some of my other goals,
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
# The build requires docker (or compatible) to produce the images,
# and the
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

# This is missing immediate or something
IMAGE_TAG := $(call shell,git rev-parse --short HEAD)
IMAGE      = mweb:$(IMAGE_TAG)

$(BUILD_DIR)/%.iid: Dockerfile $(wildcard *) | $(BUILD_DIR)
	$(DOCKER) build --tag $(*) --iidfile $(@) .

image: ; $(MAKE) $(BUILD_DIR)/$(IMAGE).iid
.PHONY: image

##
# Registry creation..
# Google Container Registry API - Deprecated .... Artifacte Registry is where its at
# https://console.cloud.google.com
#
# Create repository in UI
# Enable
##

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