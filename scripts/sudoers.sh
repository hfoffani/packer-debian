#!/bin/bash

apt-get -y install sudo

# Set up password-less sudo for user vagrant
echo "$PACKERIOUSERNAME ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$PACKERIOUSERNAME
chmod 440 /etc/sudoers.d/$PACKERIOUSERNAME

# no tty
echo "Defaults !requiretty" >> /etc/sudoers
