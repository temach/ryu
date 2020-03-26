#!/bin/bash
ip link set ens4 down
ip address flush ens4
ip address add 192.168.10.2/24 dev ens4
ip link set ens4 up
