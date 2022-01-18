FROM alpine

RUN apk add --no-cache \
    bash \
    nano vim \
    curl \
    wget \
    nmap \
    iptables \
    postgresql-client \
    bind-tools

ENV KUBE_VERSION="v1.20.5"
WORKDIR /tmp
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/${KUBE_VERSION}/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin

ARG HOME=/root
WORKDIR $HOME

COPY .bash_aliases .
COPY .bashrc .
