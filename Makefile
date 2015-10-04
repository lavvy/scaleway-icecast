NAME =			icecast
VERSION =		latest
VERSION_ALIASES =	2
TITLE =			Icecast
DESCRIPTION =		Free software for streaming multimedia.
SOURCE_URL =		https://github.com/scaleway-community/scaleway-icecast
VENDOR_URL =		http://icecast.org

IMAGE_VOLUME_SIZE =     50G
IMAGE_BOOTSCRIPT =      stable
IMAGE_NAME =            Icecast2


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
