#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt install acl
sudo useradd -m adminuser
echo adminuser | passwd adminuser --stdin
sudo usermod -a -G sudo adminuser

sudo useradd -m poweruser
sudo passwd -d poweruser
echo 'poweruser ALL=(ALL:ALL) /usr/sbin/iptables' >> /etc/sudoers
sudo usermod -a -G root poweruser
sudo chmod 750 /home/adminuser
sudo usermod -aG adminuser poweruser

setfacl -m g:poweruser:rx /home/adminuser
sudo -u poweruser ln -s /etc/mtab /home/poweruser/mtab_link

