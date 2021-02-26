#!/usr/bin/env bash
picl_generator_dir=~/src/picl-k3os-image-generator/


cp picl-config/*  ${picl_generator_dir}/config
cd ${picl_generator_dir} || exit
docker run \
  -e RASPBERRY_PI_FIRMWARE=1.20210104 \
  -e K3OS_VERSION="v0.19.5-rc.1" \
  -e TARGET=raspberrypi \
  -v ${PWD}:/app \
  -v /dev:/dev \
  --privileged picl-builder:latest
sudo chown nick picl-k3os-*.img
