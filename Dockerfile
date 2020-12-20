FROM alpine:latest

RUN apk add --no-cache \
    bash \
    nano vim \
    curl \
    wget

ARG USER=bob
ARG GROUP=$USER

RUN addgroup -S $GROUP && \
    adduser -S $USER -G $GROUP

WORKDIR /home/$USER

COPY .bash_aliases .
RUN chown $USER:$GROUP .bash_aliases

COPY .bashrc .
RUN chown $USER:$GROUP .bashrc

USER $USER
