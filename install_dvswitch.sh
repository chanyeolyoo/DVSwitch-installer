#!/bin/sh

INSTALL_DIR=~/opt

apt install python3
apt install python

git clone https://github.com/DVSwitch/Analog_Bridge $INSTALL_DIR/Analog_Bridge
git clone https://github.com/DVSwitch/MMDVM_Bridge $INSTALL_DIR/MMDVM_Bridge

