#!/bin/bash
PATH_TO_DIRSEARCH="/home/kali/Tools/dirsearch/"


DOMAIN=$1
DIRECTORY=${DOMAIN}_recon
echo "Creating directory $DIRECTORY."
mkdir $DIRECTORY


nmap $DOMAIN > $DIRECTORY/nmap
echo "Results of nmap scan are stored in $DIRECTORY/nmap."

$PATH_TO_DIRSEARCH/dirsearch.py -u $1 --exclude-status 403,401 --output=$DIRECTORY/dirsearch
echo "The results of dirsearch scan are stored in $DIRECTORY/dirsearch."

