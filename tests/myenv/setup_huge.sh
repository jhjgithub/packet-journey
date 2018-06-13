
echo  256 > /sys/kernel/mm/hugepages/hugepages-2048kB/nr_hugepages

mkdir -p /mnt/huge

mount -t hugetlbfs nodev /mnt/huge

# vi /etc/fstab
#nodev /mnt/huge hugetlbfs defaults 0 0

