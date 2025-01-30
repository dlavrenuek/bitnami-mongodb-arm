# bitnami-mongodb-arm

Amazed by the fact that official `bitnami/mongodb` images are not available for arm64, this repository was created and
provides build files for custom `bitnami/mongodb` compatible images. These can be used for example with the official
[bitnami mongodb helm charts](https://github.com/bitnami/charts/tree/main/bitnami/mongodb). While the build process is
based on the official [bitnami/mongodb](https://github.com/bitnami/containers/tree/main/bitnami/mongodb/) and
[mongo](https://github.com/docker-library/mongo/) Dockerfiles and binaries, it is a private project and not supported
neither by bitnami nor by mongodb. The resulting images are meant to be only used for local development on arm64-based
hardware and should not be used on production.

This repository contains build files for following mongodb versions:
- [6.0.13](6.0)

## How-to build and use the images

### Use published images

The images built from this repository are published to [Docker Hub](https://hub.docker.com/r/dlavrenuek/bitnami-mongodb-arm).

```
dlavrenuek/bitnami-mongodb-arm:6.0.13
```

### Build images from source

To build a docker image, first  go to the image directory you want to use in the terminal, f.e:

```shell
cd 6.0/debian-12
```

Then run following docker build command to build and tag an image. The following example will produce an image with the
`bitnami-mongodb:6.0.13-local` tag:

```shell
docker build -t bitnami-mongodb:6.0.13-local .
```

You can now use the image `bitnami-mongodb:6.0.13-local` locally.

### Usage via docker compose

Example usage with [mongodb 6.0 docker-compose.yaml](6.0/debian-12/docker-compose.yml). The dockerfile is configured
to build the image from source locally.

```shell
cd 6.0/debian-12
docker compose up
```

### Usage with official helm charts

The provided image can be used with the official bitnami helm charts. You can use the example [values.yaml](6.0/debian-12/values.yaml)
as following:

```shell
cd 6.0/debian-12
helm install mongo -f values.yaml oci://registry-1.docker.io/bitnamicharts/mongodb
```

If you want to use the image build from source you will need to upload the image to your registry first. For [minikube](https://minikube.sigs.k8s.io/docs/)
you can use:

```shell
minikube image load bitnami-mongodb:6.0.13-local
```

This will make the image available as `docker.io/library/bitnami-mongodb:6.0.13-local`.
