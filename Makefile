DOCKER    := docker

ART_IMAGE := registry.gitlab.com/hardenedlinux/artanis

local:
	${DOCKER} run -it --rm -v $(call abspath,.):/var/www -p 3000 ${ART_IMAGE}
