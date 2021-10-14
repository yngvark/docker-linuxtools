FROM alpine

RUN apk add --no-cache \
    bash \
    nano vim \
    curl \
    wget \
    nmap \
    postgresql-client

ARG HOME=/root
WORKDIR $HOME

COPY .bash_aliases .
COPY .bashrc .
