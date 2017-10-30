# Docker image for `kt`

[![Docker Pulls](https://img.shields.io/docker/pulls/evpavel/kt.svg)](https://hub.docker.com/r/evpavel/kt)

`kt` is Kafka command line tool (https://github.com/fgeller/kt)

Docker repository at https://hub.docker.com/r/evpavel/kt/

Image size: 4 MB compressed, 11 MB uncompressed

### Usage

```
docker run evpavel/kt topic -brokers my-kafka-server:9092
```

### How it works

1. Build image from `Dockerfile` using [multi-stage builds](https://docs.docker.com/engine/userguide/eng-image/multistage-build/)
2. Build small image with only `kt` binary

### Build

```
./build.sh
```
