#!/usr/bin/env bash
picl_generator_dir=~/src/picl-k3os-image-generator/


cp picl-config/*  ${picl_generator_dir}/config
cd ${picl_generator_dir} || exit
docker run \
  -e RASPBERRY_PI_FIRMWARE=1.20201126 \
  -e K3OS_VERSION=v1.20.2+k3s1 \
  -e TARGET=raspberrypi \
  -v ${PWD}:/app \
  -v /dev:/dev \
  --privileged picl-builder:latest
sudo chown nick picl-k3os-*.img
