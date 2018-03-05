#!/bin/bash

export activated=1

orig_dir=$(pwd)
dir=$(cd $(dirname -- $0) && pwd)
venv_deploy_dir=${dir}/_venv_deploy

#### Check if virtualenv exists on the host, abort if it doesn't
if ! virtualenv --version; then
  echo "virtualenv is not installed, please install it on this host, before running $0"
  echo "  sudo pip install virtualenv"
  return 1
fi

mkdir -p ${venv_deploy_dir}
cd ${venv_deploy_dir}

virtualenv .

source bin/activate
pip install ansible==2.4.0.0

# Both boto and boto3 are needed. Boto is used for the ec2_vpc module, boto3 is used for setting the subnet auto-assign public IP.
pip install boto==2.48.0
pip install boto3==1.4.7

cd ${orig_dir}
