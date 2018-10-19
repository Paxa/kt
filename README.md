# Docker image for `kt`

[![Docker Pulls](https://img.shields.io/docker/pulls/evpavel/kt.svg)](https://hub.docker.com/r/evpavel/kt)

`kt` is Kafka command line tool (https://github.com/fgeller/kt)

Docker repository at https://hub.docker.com/r/evpavel/kt/

Image size: 7 MB compressed, 20 MB uncompressed

### Usage

```
docker run evpavel/kt kt topic -brokers my-kafka-server:9092
```

With bash autocomplete:
```
docker run -it evpavel/kt bash
d403caf43e88:/# kt <tab><tab>
```

### Features

* come with bash, jq and jsonify, curl, telnet, nano
* bash completion

### Build

```
./build.sh
```
