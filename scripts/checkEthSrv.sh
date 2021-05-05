#! /bin/bash

logFile="/tmp/ethSrvLog.log"
server="us2.ethermine.org"
wallet="myWallet"
timestamp=$(date +%Y-%m-%d_%H:%M:%S)

if [[ ! -f $logFile ]] ; then
    touch $logFile
fi

((count = 100))                            
while [[ $count -ne 0 ]] ; do
    ping -c 1 $server                      
    rc=$?
    if [[ $rc -eq 0 ]] ; then
        ((count = 1))
        echo "$timestamp: ETH Server is Still Up" >> $logFile                     
    else
        echo "$timestamp: ETH Server is Offline" >> $logFile
        sleep 30
    fi
    ((count = count - 1))                  
done