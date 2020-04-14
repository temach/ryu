#!/bin/bash
git pull
( cd .. && python3 setup.py install )
ryu-manager \
	--ctl-privkey /root/ryu/dummy-certs-2/controllerA-privkey.pem \
	--ctl-cert /root/ryu/dummy-certs-2/controllerA-cert.pem \
	--ca-certs /root/ryu/dummy-certs-2/switchca-cert.pem \
	--verbose
