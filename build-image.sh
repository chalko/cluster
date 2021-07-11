#!/usr/bin/env bash
picl_generator_dir=~/src/picl-k3os-image-generator/

# Firmware at https://github.com/raspberrypi/firmware/releases
# K3OS at https://github.com/rancher/k3os/releases


cp picl-config/*  ${picl_generator_dir}/config
cd ${picl_generator_dir} || exit
docker run \
  -e RASPBERRY_PI_FIRMWARE=1.20210527\
  -e K3OS_VERSION="v0.20.7-k3s1r0" \
  -e TARGET=raspberrypi \
  -v ${PWD}:/app \
  -v /dev:/dev \
  --privileged picl-builder:latest
sudo chown nick picl-k3os-*.img
