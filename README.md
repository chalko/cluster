# My Cluster

The configuration for my cluster

## Hardware

I single Raspberry Pi 4 w 2G ram

## k30s

The k8s distribution I chose was k30s which I install
on my Raspberry Pi 4 using 
[PiCl k3os image generator](https://github.com/sgielen/picl-k3os-image-generator)
with the configs at [picl-config](picl-config)

## Configuration

The software on my cluster is controlled by the 
[hemlfile](helmfile.yaml)

### Helmfile

I decide on helmfile because using kustomize seemed to complicated.

 

