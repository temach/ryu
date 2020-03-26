#!/bin/bash
apt-get -y update
apt-get -y install git openvswitch-common openvswitch-switch net-tools procps
cd ~
git clone https://github.com/temach/ryu
cd ryu
git checkout wip
export PATH="/usr/share/openvswitch/scripts/:$PATH"
ovs-ctl start
ovs-vsctl init
ovs-vsctl add-br br0
ovs-vsctl show
# ovs-vsctl set-ssl /root/ryu/dummy-certs/sw2/sw2-privkey.pem /root/ryu/dummy-certs/sw2/sw2-cert.pem /root/ryu/dummy-certs/switchca-mix.pem
ovs-vsctl set-ssl /root/ryu/dummy-certs/sw2/sw2-privkey.pem /root/ryu/dummy-certs/sw2/sw2-cert.pem /root/ryu/dummy-certs/switchca-mix.pem

# After settings SSL run this with your ip address
# ovs-vsctl set-controller br0 ssl:192.168.122.125:6653
