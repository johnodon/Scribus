#!/bin/bash
#Install script for applications
#Scribus

#####################################
#	Add PPA and install app          	#
#							                  		#
#####################################
add-apt-repository -y ppa:scribus/ppa
apt-get update -qq
apt-get install -qy scribus

#####################################
#	Add configs and needed stuff    	#
#								                  	#
#####################################
cp /files/startapp.sh /startapp.sh
chmod +x /startapp.sh

exit
