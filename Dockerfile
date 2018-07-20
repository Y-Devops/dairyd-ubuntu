FROM ubuntu:xenial

MAINTAINER Leonardo Luduena <lleo@linux.com>

ENV REFRESHED_AT 2018-07-01

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends apt-utils ca-certificates curl debconf-utils nano wget && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/ubuntu
ENV HOME /opt/ubuntu
WORKDIR /opt/ubuntu
VOLUME ["/etc", "/var/log", "/home", "/root"]
