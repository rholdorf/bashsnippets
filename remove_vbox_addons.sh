#!/bin/bash

cd /opt/VBoxGuestAdditions-5.2.12/
sudo ./uninstall.sh
cd

sudo dpkg --remove virtualbox-guest-utils-hwe
sudo dpkg --remove virtualbox-guest-dkms-hwe
sudo dpkg --remove virtualbox-guest-x11-hwe
sudo dpkg --purge virtualbox-guest-utils-hwe
sudo dpkg --purge virtualbox-guest-x11-hwe

