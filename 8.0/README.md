# bitnami/mongodb 8.0

Custom bitnami/mongodb 8.0 compatible image in arm64 architecture. This image is based on custom minideb debian 13 
(trixie), which is also included in the build process until official images are available by bitnami. The build
process was designed and only tested on an ARM mac. The code is based on official sources:

- https://github.com/bitnami/minideb
  - updated debootstrap from official source: https://salsa.debian.org/installer-team/debootstrap/-/blob/master/scripts/debian-common
- https://github.com/bitnami/containers/tree/main/bitnami/mongodb/

## Instructions

To build mongodb image from scratch including minideb run:

```shell
make build
```

This will create and load following images to the local docker repository:

- `bitnami/minideb:trixie`
- `dlavrenuek/bitnami-mongodb-arm:8.0.4`

If minideb based on debian 13 is already released (see tags in [official repository](https://hub.docker.com/r/bitnami/minideb/tags?name=trixie))
you only need to build mongodb:

```shell
make build-mongo
```
