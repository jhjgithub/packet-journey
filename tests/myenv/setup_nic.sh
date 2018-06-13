
modprobe uio
modprobe vfio 
modprobe vfio_pci
insmod ./igb_uio.ko
#insmod ./rte_kni.ko
insmod ./rte_kni.ko kthread_mode=multiple

./usertools/dpdk-devbind.py --force -b igb_uio eth1
./usertools/dpdk-devbind.py --force -b igb_uio eth2
