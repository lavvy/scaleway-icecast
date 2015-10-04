## -*- docker-image-name: "scaleway/icecast:latest" -*-
FROM scaleway/ubuntu:trusty
MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Install Icecast2
RUN apt-get -qq update \
 && apt-get -qq -y install icecast2 \
 && apt-get clean


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
