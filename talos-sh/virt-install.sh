
VM=cp1

virt-install --name ${VM}  \
    --ram 4048 \
    --vcpus 2 \
    --os-type linux \
    --os-variant ubuntu20.04      \
    --network bridge=br0 \
    --disk path=~/libvirt/images/${VM}.qcow2,size=20,device=disk \
    --cdrom ~/Downloads/talos-amd64.iso \
    --console=pty,target.type=serial \
    --graphics none


# get the ip

IP=xxx

talosctl apply-config --insecure \
    --file=worker.yaml \
    --nodes${IP}
