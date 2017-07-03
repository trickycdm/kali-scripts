#!/bin/bash
#REQUIRES: proxychains, tor, namp. apt-get them all.
#You must specify an IP here as we have disabled DNS resolution
#To prevent DNS leaks, use tor-resolve command to resolve a hostname to an IP address via Tor network:
#E.G tor-resolve google.com
ip=$1;
#-sT 	full TCP connection scan
#-sS    half open scan (faster, stealthier)
#-PN 	do not perform host discovery
#-n 	never perform DNS resolution (to prevent DNS leaks)
#-sV 	determine service version/info
#-p 	ports to scan
#-oA    output to file (all file types)
#must have tor running
proxychains nmap -sS -PN -n -sV -p 80,443,21,22 -oA $ip-scan $ip;