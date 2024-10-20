# Synology download script

This script solves a problem I had with the default `sat.ip` DNS name - even though I host my own 
domain and DNS server (and my DHCP server correctly deployed the default DNS domain name), 
I was not able to make any client correctly resolve the `sat.ip` hostname (though `sat.ip.mydomain` worked).
It seems like I did not correctly configure my DNS (Windows active directory), but I did not want to
fiddle too long nor break something, so I decided to host the m3u list on my synology and
automatically search/replace the `sat.ip` hostname with my Telestar Digbit Twin's...
