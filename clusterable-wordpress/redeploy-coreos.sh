#!/bin/bash
COSV_DIR=../../coreos-vagrant
UNIT_DIR=$(pwd)

cd ${COSV_DIR}

url=$(curl "https://discovery.etcd.io/new?size=3")
echo "New CoreOS Discovery URL: ${url}"
replace_url=$(echo $url | sed -e 's/[\/&]/\\&/g')
sed -i.bak "s/https:\/\/discovery.etcd.io\/.*/$replace_url/g" user-data

vagrant destroy -f
vagrant box update
vagrant up
cd ${UNIT_DIR}
