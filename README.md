# DVSwitch-installer
One-click installer for DVSwitch

Created by Chanyeol Yoo (VK2FAED)

WARNING: 
- THIS REPO IS CURRENTLY BEING DEVELOPED AND TESTED. NOTHING IS GUARANTEED
- This installer does not rely on previous installations. However, 

## Prerequisites
Run following lines:
```
chmod +x install_dvswitch.sh
chmod +x run_dvswitch.sh
chmod +x stop_dvswitch.sh
chmod +x uninstall_dvswitch.sh
```

## Installation
Run 
```
sudo ./install_dvswitch
```

(If DVSwitch was ever installed on the targeted machine, run `sudo ./uninstall_dvswitch` to remove any folders from `/opt`)

## Configuration
Two configuration files, ~/opt/Analog_Bridge/Analog_Bridge.ini and ~/opt/MMDVM_Bridge/MMDVM_Bridge.ini needs to be changed

### ~/opt/Analog_Bridge/Analog_Bridge.ini
#### [AMBE_AUDIO]
- Add your DMR ID to `gatewayDmrId=`
- [Optional] You may need to change `repeaterID`
#### [USRP]
- Change to `txPort=50000` and `rxPort=50000`

### ~/opt/MMDVM_Bridge/MMDVM_Bridge.ini
#### [General]
- Change `Callsign` and `ID`
#### [DMR]
- Change `Enable=0` to `Enable=1`
#### [DMR Network]
- Change `Enable=0` to `Enable=1`
- Change DMR server information

## Running DVSwitch Server
Run `sudo ./run_dvswitch.sh` to run both Analog_Bridge and MMDVM_Bridge. The Analog_Bridge application will run in the background and only the contents from MMDVM_Bridge will be shown.

## Setup on client
- Select `USRP` for protocol
- Change `Hostname` to the IP address (i.e., run `ifconfig` to find server's IP address
- Change `Port` and `TX PORT` to `50000`

## Exiting application
`Control-C` will **usually** terminate both applications, but sometimes the Analog_Bridge remains running in background. 

Run `sudo ./stop_dvswitch.sh` to make sure both are terminated.

## Uninstallation
Run `sudo ./uninstall_dvswitch.sh` to remove the relevent folders in ~/opt
