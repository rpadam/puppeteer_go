FROM alekzonder/puppeteer:1.3.0-0

MAINTAINER Raphael Adam <raphaelpauladam@gmail.com, raphael.adam@workiva.com, raphael912003@gmail.com>

LABEL Description="This image contains: Puppeteer with its dependencies, and go"

USER root

ENV GOPATH=/go
ENV GOVER=1.10.1
ENV PATH=$PATH:$GOPATH/bin:/usr/local/go/bin

RUN apt-get update && apt-get install -y \
    git \
    ssh \
    unzip \
    wget \
    make \
  && apt-get clean

RUN wget https://storage.googleapis.com/golang/go${GOVER}.linux-amd64.tar.gz \
  && tar -C /usr/local -xzf go${GOVER}.linux-amd64.tar.gz \
  && rm -f go${GOVER}.linux-amd64.tar.gz
