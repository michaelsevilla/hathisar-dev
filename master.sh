#! /bin/bash

#sudo apt-get update
#sudo apt-get install python-setuptools
#sudo easy_install pip
#sudo pip install docker-py

echo "Installing an Ansible Docker container and dropping you into an 'experiment shell'"
docker run -t -i  \
  --hostname="experiment_master" \
  --volume="`pwd`/experiments:/experiments" \
  --workdir="/experiments" \
  williamyeh/ansible:ubuntu14.04 \
  /bin/bash
