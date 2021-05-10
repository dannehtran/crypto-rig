#!/bin/bash
#nvidia gpu power limit script

#xhost +local:

#GPU 1 (3080)
sudo nvidia-smi -i 0 -pl 220
sudo nvidia-settings -a "[gpu:0]/GPUGraphicsClockOffset[3]=-150" 
sudo nvidia-settings -a "[gpu:0]/GPUMemoryTransferRateOffset[3]=900"
#sudo nvidia-settings -a [gpu:0]/GPUFanControlState=1 -a [fan:0]/GPUTargetFanSpeed=80
#sudo nvidia-settings -a [gpu:0]/GPUFanControlState=1 -a [fan:1]/GPUTargetFanSpeed=80
#sudo nvidia-settings -a [gpu:0]/GPUFanControlState=1 -a [fan:2]/GPUTargetFanSpeed=80

#GPU 2 (3070)
sudo nvidia-smi -i 1 -pl 130
sudo nvidia-settings -a "[gpu:1]/GPUGraphicsClockOffset[3]=-600" 
sudo nvidia-settings -a "[gpu:1]/GPUMemoryTransferRateOffset[3]=1200"
#sudo nvidia-settings -a [gpu:1]/GPUFanControlState=1 -a [fan:0]/GPUTargetFanSpeed=80
#sudo nvidia-settings -a [gpu:1]/GPUFanControlState=1 -a [fan:1]/GPUTargetFanSpeed=80

#GPU 3 (3070)
sudo nvidia-smi -i 2 -pl 130
sudo nvidia-settings -a "[gpu:2]/GPUGraphicsClockOffset[3]=-600" 
sudo nvidia-settings -a "[gpu:2]/GPUMemoryTransferRateOffset[3]=1200"
#sudo nvidia-settings -a [gpu:2]/GPUFanControlState=1 -a [fan:0]/GPUTargetFanSpeed=80
#sudo nvidia-settings -a [gpu:2]/GPUFanControlState=1 -a [fan:1]/GPUTargetFanSpeed=80

#GPU 4 (3080)
sudo nvidia-smi -i 3 -pl 220
sudo nvidia-settings -a "[gpu:3]/GPUGraphicsClockOffset[3]=-150" 
sudo nvidia-settings -a "[gpu:3]/GPUMemoryTransferRateOffset[3]=900"
#sudo nvidia-settings -a [gpu:3]/GPUFanControlState=1 -a [fan:0]/GPUTargetFanSpeed=80
#sudo nvidia-settings -a [gpu:3]/GPUFanControlState=1 -a [fan:1]/GPUTargetFanSpeed=80
#sudo nvidia-settings -a [gpu:3]/GPUFanControlState=1 -a [fan:2]/GPUTargetFanSpeed=80

#GPU 5 (3080)
sudo nvidia-smi -i 4 -pl 220
sudo nvidia-settings -a "[gpu:4]/GPUGraphicsClockOffset[3]=-150" 
sudo nvidia-settings -a "[gpu:4]/GPUMemoryTransferRateOffset[3]=900"
#sudo nvidia-settings -a [gpu:4]/GPUFanControlState=1 -a [fan:0]/GPUTargetFanSpeed=80
#sudo nvidia-settings -a [gpu:4]/GPUFanControlState=1 -a [fan:1]/GPUTargetFanSpeed=80
#sudo nvidia-settings -a [gpu:4]/GPUFanControlState=1 -a [fan:2]/GPUTargetFanSpeed=80
