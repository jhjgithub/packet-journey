
TARGET="build"
KMOD="igb_uio.ko  rte_kni.ko"

for i in $KMOD; do
 -proot123 scp -o StrictHostKeyChecking=no root@192.168.219.150:/root/dpdk-stable-17.11.2/$TARGET/kmod/$i .
done

sshpass -proot123 scp -r -o StrictHostKeyChecking=no root@192.168.219.150:/root/dpdk-stable-17.11.2/usertools .
