#!/bin/sh

ps -ef | grep 'Analog_Bridge.amd64' | grep -v grep | awk '{print $2}' | xargs -r kill -9
ps -ef | grep 'MMDVM_Bridge.amd64' | grep -v grep | awk '{print $2}' | xargs -r kill -9