#!/bin/bash

######################################################################
# copyspl0it.sh
# search and copy Exploit from exploit-db 2 metasploit-framework
# Needs searchsploit amd metasploit-framework installed
# apt-get install mplayer lame
# command: > copyspl0it.sh $searchsting1 $searchstring2 $searchstring3
######################################################################

######################################################################
# last modify: 04.07.2017
# bug or anything: d43M0n23@3xpl0it.com
######################################################################

######################################################################

# Bash sTyl3!
clear='\033[0m'			#alle Attribute zurücksetzen
red='\e[31m'
bold='\033[1m'			#Fettschrift
underline='\033[4m'		#Unterstreichen
blinken='\033[5m'		#Blinken
invers='\033[7m'		#inverse Darstellung
black='\033[30m'		#Schriftfarbe schwarz
red='\033[31m'			#Schriftfarbe rot
green='\033[32m'		#Schriftfarbe grün
yell='\033[33m'			#Schriftfarbe gelb
blue='\033[34m'			#Schriftfarbe blau
mag='\033[35m'			#Schriftfarbe magenta
turk='\033[36m'			#Schriftfarbe türkis
white='\033[37m'		#Schriftfarbe weiß
######################################################################

##Variablen
DATE=$(date +%F)
version=1.0
vdate=15.09.2017

# Local Destination
#DESTINATION=/home/bk4/

# Logfile
#LOG="bk4.log"

# Email
email=alex@xcoorp.com

# Tools install
if ! hash searchsploit 2>/dev/null; then sudo apt-get update && apt-get upgrade -y; sudo apt-get install --yes searchsploit ; fi
if ! hash msfconsole 2>/dev/null; then sudo apt-get update && apt-get upgrade -y; sudo apt-get install --yes metasploit-framework ; fi

### FUNCTIONS ###

### START SCRIPT ###
read -p "Exploit (e.g. Wordpress)? " $search1 $search2 $search3
if [ $search1 ]; then
		searchsploit $search1 $search2 $search3
#                sh_mail
#                else
#                echo -e "\nPlease enter a domain!\n"
fi
