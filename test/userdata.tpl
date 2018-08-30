#!/bin/sh
 #installing chef SDK in weblogic server..... 
sudo sh
curl -s https://omnitruck.chef.io/install.sh | sudo bash -s -- -P chefdk
echo 'eval "$(chef shell-init bash)"' >> ~/.bash_profile
source ~/.bash_profile

echo 'checking the chef version'
chef --version 

echo 'disabling the iptables '
iptables -F

#starting weblogic server
sudo su
cd /home/centos/
 chef-client -o "recipe[webapplication]" --environment Java_application