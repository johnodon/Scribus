#!/bin/bash
#Install script for applications
#Scribus

#####################################
#	Install dependencies            	#
#							                  		#
#####################################

apt-get update -qq
apt-get install -qy 

#####################################
#	Add repository and install keys  	#
#							                  		#
#####################################
add-apt-repository -y ppa:scribus/ppa
gpg --keyserver wwwkeys.pgp.net --recv-keys 64B6EE15
gpg --armor --export 64B6EE15 | sudo apt-key add -

#####################################
#	Install application             	#
#							                  		#
#####################################
apt-get update -qq
apt-get install -qy scribus

#####################################
#	Add configs and needed stuff    	#
#								                  	#
#####################################
cp /files/startapp.sh /startapp.sh
chmod +x /startapp.sh

exit
