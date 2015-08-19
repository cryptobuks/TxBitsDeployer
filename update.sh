#!/usr/bin/env sh
./valid_env.sh $0 $1
if [ $? -ne 0 ]; then
  exit 1
fi
./txbits/txbits.sh universal:packageZipTarball
cd playbook
  ansible-playbook -i ${1}_hosts -t deploy_frontend main.yml
cd -
