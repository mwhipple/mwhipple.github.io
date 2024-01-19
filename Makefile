DOCKER      := docker
GCLOUD      := gcloud

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
GCP_COMPONENT := www

##
# Configure service account and grant access by principal
# Provdie principal with impersonate permission
# Provide SA principal with missing permissions
##

PUSH_REPO_PATH := $(PUSH_REGISTRY)/$(GCP_PROJECT)/$(GCP_COMPONENT)

PUSH_SA := mweb-569@mweb-411216.iam.gserviceaccount.com

GCP_AUTH := --impersonate-service-account=$(PUSH_SA)

logged-in: ; #$(GCLOUD) auth login

$(BUILD_DIR)/pushed-%: $(BUILD_DIR)/%.iid logged-in | $(BUILD_DIR)
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


