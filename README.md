# Docker image for `kt`

[![Docker Pulls](https://img.shields.io/docker/pulls/evpavel/kt.svg)](https://hub.docker.com/r/evpavel/kt)

`kt` is Kafka command line tool (https://github.com/fgeller/kt)

Docker repository at https://hub.docker.com/r/evpavel/kt/

Image size: 4 MB compressed, 20 MB uncompressed

### Usage

```
docker run evpavel/kt kt topic -brokers my-kafka-server:9092
```

### Features

* come with bash, jq and jsonify
* bash completion

### Build

```
./build.sh
```
