FROM ubuntu:trusty

LABEL maintainer="7of9@ydevops.com"

ENV REFRESHED_AT 2020-03-22

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends apt-utils ca-certificates curl debconf-utils nano wget && \
    rm -rf /var/lib/apt/lists/*
RUN mkdir -p /opt/ubuntu
ENV HOME /opt/server
WORKDIR /opt/server

VOLUME ["/etc", "/var/log", "/home", "/root"]
