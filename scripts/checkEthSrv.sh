#! /bin/bash

logFile="/tmp/ethSrvLog.log"
server="us2.ethermine.org"
wallet="myWallet"
port="4444"
timestamp=$(date +%Y-%m-%d_%H:%M:%S)

if [[ ! -f $logFile ]] ; then
    touch $logFile
fi

((count = 20))                            
while [[ $count -ne 0 ]] ; do
    ping -c 1 $server                      
    rc=$?
    if [[ $rc -eq 0 ]] ; then
        ((count = 1))
        echo "$timestamp: ETH Server is Still Up" >> $logFile
        if [[ $(pidof ethminer) == "" ]] ; then
            echo "$timestamp: ETH Miner terminal is not active, reinitializing mining!"
            sudo xterm -hold -e sudo ethminer -G -P stratum1+tcp://$wallet@$server:$port
        fi                     
    else
        echo "$timestamp: ETH Server is Offline" >> $logFile
        if [[ $(pidof ethminer) == "" ]] ; then
            echo "$timestamp: ETH Miner terminal is not active, reinitializing mining!"
            xterm -hold -e sudo ethminer -G -P stratum1+tcp://$wallet@$server:$port
        else
            echo "$timestamp: Killing inactive ETH miner process."
            sudo kill $(pidof ethminer)
            echo "$timestamp: Reinitializing Miner."
            sudo xterm -hold -e sudo ethminer -G -P stratum1+tcp://$wallet@$server:$port
        fi
    fi
    ((count = count - 1))                  
done