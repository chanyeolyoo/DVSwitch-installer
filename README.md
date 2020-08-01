# DVSwitch-installer
One-click installer for DVSwitch. This installer is written for installing DVSwitch on Windows Subsystem for Linux (WSL) in order to run DVSwitch on Windows 10 machines.

Created by Chanyeol Yoo (VK2FAED)

WARNING: 
- THIS REPO IS CURRENTLY BEING DEVELOPED AND TESTED. NOTHING IS GUARANTEED

## Prerequisites
Run the following line:
```
chmod +x install_dvswitch
```

## Installation
Run 
```
sudo ./install_dvswitch
```
(If DVSwitch was ever installed on the targeted machine, run `sudo ./uninstall_dvswitch` to remove any folders from `/opt`)

## Configuration
Two configuration files, `/opt/Analog_Bridge/Analog_Bridge.ini` and `/opt/MMDVM_Bridge/MMDVM_Bridge.ini` need to be changed. See below for details.

### /opt/Analog_Bridge/Analog_Bridge.ini
#### [AMBE_AUDIO]
- Add your DMR ID to `gatewayDmrId=`
- [Optional] You may need to change `repeaterID`
#### [USRP]
- Change to `txPort=50000` and `rxPort=50000`

### /opt/MMDVM_Bridge/MMDVM_Bridge.ini
#### [General]
- Change `Callsign` and `ID`
#### [DMR]
- Change `Enable=0` to `Enable=1`
#### [DMR Network]
- Change `Enable=0` to `Enable=1`
- Change DMR server information
  - For Australia, change to `Address=vkbm.repeaters.info` while leaving the others the same
  - For other countries, change it to appropriate parameters

## Running DVSwitch Server
Run `sudo run_dvswitch` to run both Analog_Bridge and MMDVM_Bridge. The `Analog_Bridge` application will run in the background and only the contents from `MMDVM_Bridge` will be shown.

## Setup on client
- Select `USRP` for protocol
- Change `Hostname` to the IP address (i.e., run `ifconfig` to find server's IP address
- Change `Port` and `TX PORT` to `50000`

## Exiting application
`Control-C` will **usually** terminate both applications, but sometimes the Analog_Bridge remains running in background. 

Run `sudo stop_dvswitch` to make sure both are terminated.

## Uninstallation
Run `sudo uninstall_dvswitch` to remove the relevent folders in `/opt`
