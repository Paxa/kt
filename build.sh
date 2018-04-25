#!/usr/bin/env bash
set -e

docker build --pull -t=evpavel/kt:latest .
docker tag evpavel/kt:latest evpavel/kt:0.2
