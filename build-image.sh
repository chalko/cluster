#!/usr/bin/env bash
picl_generator_dir=~/src/picl-k3OS-image-generator/

cp picl-config/*  ${picl_generator_dir}/config
cd ~/src/picl-k3OS-image-generator/
docker run -e TARGET=raspberrypi -v ${PWD}:/app -v /dev:/dev --privileged picl-builder:latest
sudo chown nick picl-k3os-v0.11.0-raspberrypi.img
