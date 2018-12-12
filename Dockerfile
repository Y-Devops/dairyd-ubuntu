FROM ubuntu:bionic
LABEL maintainer="devops@yungas.co"

ENV REFRESHED_AT 2018-12-10

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends apt-utils ca-certificates curl debconf-utils nano wget && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/server
ENV HOME /opt/server
WORKDIR /opt/server
VOLUME ["/etc", "/var/log", "/home", "/root"]
