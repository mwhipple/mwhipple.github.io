DOCKER      := docker

ART_IMAGE   := registry.gitlab.com/hardenedlinux/artanis

MOUNT_LOCAL := --mount type=bind,src=$(call abspath,.),dst=/var/www

local:
	${DOCKER} run --interactive --tty --rm ${MOUNT_LOCAL} --publish 3000 ${ART_IMAGE}
