#!/bin/bash
#Install script for applications
#Gourmet

#####################################
#	Install dependencies and app    	#
#							                  		#
#####################################

apt-get update -qq
apt-get install -qy gourmet

#####################################
#	Add configs and needed stuff    	#
#								                  	#
#####################################
cp /files/startapp.sh /startapp.sh
chmod +x /startapp.sh

exit
