#Sharif ID Reconnector

## What is sharif id, what is this?
Sharif ID is a account in Sharif University of Technology [Computing Center](http://itc.sharif.ir/home) that is required for accessing Internet in the university and dorm rooms. It is established to level bandwidth distribution among users. Sharif ID is used as a VPN Connection. The main problem is that it disconnects too often and in peak hours, becomes almost inaccessible.

This is a simple shell script that every 30 seconds checks for connectivity to so called "Sharif ID", if it was disconnected tries to reconnect.

## Initial configuration
* Set up a vpn connection for Sharif ID. [Instructions](https://id.sharif.ir/pages/guide.html)
* Edit the script and replace NAME-OF-CONNECTION with name of the VPN connection. DO NOT remove quotation marks and DO NOT add any extra whitespaces in code
* Make the script executable (optional). (i.e. `chmod +x sharifid.sh`)

## Usage
Run from a terminal:
```
./sharifid.sh # If the file is executable
cat sharifid.sh | sh # Works even if the script isn't executable.
```
