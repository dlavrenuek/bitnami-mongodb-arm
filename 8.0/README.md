# bitnami/mongodb 8.0

Custom bitnami/mongodb 8.0 compatible image in arm64 architecture. This image is based on ~~custom~~official minideb debian 13 
(trixie).
For a dockerized version of minideb build see the branch [minideb-dockerbuild](https://github.com/dlavrenuek/bitnami-mongodb-arm/tree/minideb-dockerbuild/8.0).
The build rocess was designed and only tested on an ARM mac. The code is based on official sources:

- https://github.com/bitnami/containers/tree/main/bitnami/mongodb/

## Instructions

To build mongodb image from scratch including minideb run:

```shell
make build
```

This will create and load following images to the local docker repository:

- `dlavrenuek/bitnami-mongodb-arm:8.0.9`
