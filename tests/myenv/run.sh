
#/root/packet-journey/build/app/x86_64-native-linuxapp-gcc/pktj -l 1,2,3 -n 3 --socket-mem=512 --log-level=4 -- --configfile /root/packet-journey/pktj.conf



echo "download pktj..."
dn.sh

#/root/pktj/pktj -l 0,1,2,3 -n 4 --socket-mem=1024 --log-level=8 -- --configfile /root/pktj/pktj.conf
/root/pktj/pktj -c 0xff -n 8 --socket-mem=1024 --log-level=6 -- --configfile /root/pktj/pktj.conf


