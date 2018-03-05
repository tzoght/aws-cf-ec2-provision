#!/usr/bin/env bash

if [ -z $activated ]; then
    echo "Run : 'source activate.sh' before invoking this script"
    exit 1
fi

pushd install/playbooks

ansible-playbook --extra-vars "key_pair_name=$1"  do-provision-stack.yml

popd