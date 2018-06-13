#!/bin/sh

setup_dpdk0()
{
        local link1=$1
        local mac1=$2

        ip link set $link1 up
        ip addr add 1.1.1.254/24 dev $link1

        #ip link add link $link1 name $link1.2000 type vlan id 2000
        #ip link set $link1.2000 address $mac1
        #ip link set $link1.2000 up


        #ip addr add 1.1.1.254/24 dev $link1.2000
        #ip addr add 2.2.2.1/24 dev $link1.2000
        #ip route add 2.2.2.0/24 via 1.1.1.254

        #ip addr add 2001:3::5/48 dev $link1.2000
        #ip route add 2001:4::/48 via 2001:3::4
}

setup_dpdk1()
{
        local link1=$1
        local mac1=$2

        ip link set $link1 up
        ip addr add 2.2.2.1/24 dev $link1

        #ip link add link $link1 name $link1.2000 type vlan id 2000
        #ip link set $link1.2000 address $mac1
        #ip link set $link1.2000 up

        #ip addr add 20.1.1.254/24 dev $link1.2000
        #ip addr add 2.2.2.1/24 dev $link1.2000
        #ip route add 20.2.2.0/24 via 20.1.1.254

        #ip addr add 2001:3::5/48 dev $link1.2000
        #ip route add 2001:4::/48 via 2001:3::4
}

############### 

echo "############# start config" >> ./pktj.log
echo "args=$#" >> ./pktj.log

while [ $# -ge 1 ]; do
        link=$1
        mac=$2

        echo "mac=$mac, link=$link" >> ./pktj.log

        if [ "$link" = "dpdk0" ]; then
                setup_dpdk0 $link $mac
        elif [ "$link" = "dpdk1" ]; then
                setup_dpdk1 $link $mac
        fi

        shift 2 || break
done

