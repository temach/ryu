#!/bin/bash
git pull
python3 setup.py install
ryu-manager \
	--ctl-privkey /root/ryu/dummy-certs/ctrl2/ctrl2-privkey.pem \
	--ctl-cert /root/ryu/dummy-certs/ctrl2/ctrl2-cert.pem \
	--ca-certs /root/ryu/dummy-certs/switchca-mix.pem \
	--verbose
