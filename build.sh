#!/usr/bin/env bash
set -e

docker build -t=evpavel/kt:latest .
docker tag evpavel/kt:latest evpavel/kt:0.1
