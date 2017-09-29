# Docker image for `kt`

[![Docker Pulls](https://img.shields.io/docker/pulls/evpavel/kt.svg)](https://hub.docker.com/r/evpavel/kt)

`kt` is Kafka command line tool (https://github.com/fgeller/kt)

Docker repository at https://hub.docker.com/r/evpavel/kt/

### How it works

1. Build image from `Dockerfile.compile`
2. Copy compiled `kt` binary
3. Build small image with only `kt` binary

### Build

```
./build_all.sh
```
