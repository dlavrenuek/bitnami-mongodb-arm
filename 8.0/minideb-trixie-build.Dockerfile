FROM docker.io/debian:bookworm

RUN apt-get update; \
    apt-get install -y make openssh-client

WORKDIR /app
COPY minideb /app

RUN make .installed-requirements
RUN make trixie
RUN ./export build/trixie.tar arm64

