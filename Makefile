DOCKER    := docker

ART_IMAGE := registry.gitlab.com/hardenedlinux/artanis

local:
	${DOCKER} run -it --rm -v /var/www/:$(call abspath,.) -p 3000 ${ART_IMAGE}
