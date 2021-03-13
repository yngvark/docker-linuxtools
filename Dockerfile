FROM alpine:latest

RUN apk add --no-cache \
    bash \
    nano vim \
    curl \
    wget \
    nmap

ARG HOME=/root
WORKDIR $HOME

COPY .bash_aliases .
COPY .bashrc .
