#!/bin/bash
apt-get -y update
# python must be less than python 3.7 otherwise error: '_context' in GreenSSLSoccket
apt-get -y install git wget python3.6 python3-pip
cd ~
git clone https://github.com/temach/ryu
cd ryu
git checkout wip
pip3 install -r /root/ryu/tools/pip-requires
python3 setup.py install
# ryu-manager --ctl-privkey /root/ryu/dummy-certs/ctrl2/ctrl2-privkey.pem --ctl-cert /root/ryu/dummy-certs/ctrl2/ctrl2-cert.pem --ca-certs /root/ryu/dummy-certs/switchca-mix.pem --verbose
