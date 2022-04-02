FROM ubuntu:20.04

RUN apt-get update && \
      apt-get -yq install apt-utils && \
      apt-get -yq install sudo

RUN sudo apt-get -yq install curl git

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
RUN sudo apt-get install -yq nodejs

RUN mkdir /app

COPY ./package.sh /app/package.sh

WORKDIR /app
ENTRYPOINT ["/bin/sh", "package.sh"]