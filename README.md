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


## Why

At one point I wanted to keep track of my Cable Modem statistics.  
And months later I have decided that having a local k8s cluster is the 
"best" way to do this.  

The real answer is I like to play with new tech and I had a pi laying around so why not.


## What's working

* Local DNS names for  services and ingress under the domain at fog.chalko.com
* SSL for ingress using Let Encrypt
* Kubernetes Dashboard https://kubernetes-dashboard.fog.chalko.com
## What's not working

* encrypting traefik to Kubernetes Dashboard.  
  * Kubernetes Dashboard in cluster as HTTP as a workaround. 

## TODO

* Monitor my cable modem.
* Install  [Prometheus](http://prometheus.io)


## Open Questions