#!/bin/sh

INSTALL_DIR=~/opt

cd $INSTALL_DIR/Analog_Bridge
./bin/Analog_Bridge.amd64 ./Analog_Bridge.ini &

cd $INSTALL_DIR/MMDVM_Bridge
./bin/MMDVM_Bridge.amd64 ./MMDVM_Bridge.ini
