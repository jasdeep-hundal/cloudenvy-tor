#!/bin/bash

# Get distribution name and add appropriate repo to apt sources
release_cmd_result=(`lsb_release -c`)
distribution=${release_cmd_result[1]}
echo -e "\ndeb\thttp://deb.torproject.org/torproject.org $distribution main\n" | sudo tee -a /etc/apt/sources.list

# Add gpg key and perform an apt-update
gpg --keyserver keys.gnupg.net --recv 886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -
sudo apt-get update

# Install tor packages
sudo apt-get -y install deb.torproject.org-keyring
sudo apt-get -y install tor
