#!/bin/bash
clear
cd /
git clone https://github.com/coolq4s/IP.git
echo "Clone git"
cd /IP
echo "mount git"
echo ""
echo "fetch IP"
sleep 2  # Changed 'wait' to 'sleep' as 'wait' is used for background processes
IPs=$(curl -s https://www.vpngate.net/api/iphone/ | grep -oE "\b([0-9]{1,3}\.){>
IPs=$(echo $IPs | sed 's/ /, /g')
IPs="$IPs, 8.8.8.8"
echo "$IPs" > IP.txt
echo "L2TP VPN IPs are:"
echo "$IPs"
echo ""
echo ""
git init
git config --local user.email "g.psrb1000@gmail.com"
git config --local user.name "coolq4s"
git add IP.txt
git commit -m "Update file IP.txt"
git push "Git Token"
rm -rf /IP
