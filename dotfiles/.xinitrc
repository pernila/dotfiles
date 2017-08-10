#!/bin/sh

#basic config

#for jail access
#xhost + inet:10.20.30.250 #base jail
#xhost + inet:10.20.30.251 #firefox jail access to X

#not needed anymore
#xhost +inet:10.20.30.251 +inet:10.20.30.252 # jails access to X

#start i3 with logging
exec i3 -V >> /var/log/i3.log

#not needed anymore
#arandr&

# For reference these are the current jails
#b06fdee8-7b3f-11e6-a291-54ee751f1bd0	firefox   	10.20.30.251
#b797f27e-7b3f-11e6-a291-54ee751f1bd0	chromium   	10.20.30.252
#f157b20d-7b3b-11e6-a291-54ee751f1bd0	RC2    		10.20.30.250
