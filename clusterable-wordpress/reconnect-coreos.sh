#!/bin/bash
COSV_DIR=../../coreos-vagrant
UNIT_DIR=$(pwd)

cd ${COSV_DIR}
eval $(ssh-agent)
vagrant ssh-config | sed -n "s/IdentityFile//gp" | uniq | xargs ssh-add
export FLEETCTL_TUNNEL="127.0.0.1:$(vagrant ssh-config | grep -i 'port' | awk '{print $2; exit}')"
rm ~/.fleetctl/known_hosts
cd $UNIT_DIR
fleetctl list-machines
