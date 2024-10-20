# Synology download script

This script solves a problem I had with the default `sat.ip` DNS name - even though I host my own 
domain and DNS server (and my DHCP server correctly deployed the default DNS domain name), 
I was not able to make any client correctly resolve the `sat.ip` hostname (though `sat.ip.mydomain` worked).

It seems like I could not correctly configure my DNS (Windows active directory), but I did not want to
fiddle too long nor break something, so I decided to host the m3u list on my synology and
automatically search/replace the `sat.ip` hostname with my Telestar Digbit Twin's actual hostname...

The script can be run on the Synology as a scheduled task (either once on maybe every Month) and mainly
does the following things:

- download the current Astra192e m3u list from (https://github.com/dersnyke/satipplaylists/)[https://github.com/dersnyke/satipplaylists], the actual link is (satip_astra192e.m3u)[https://github.com/dersnyke/satipplaylists/raw/refs/heads/main/satip_astra192e.m3u]
- run sed to replace all `rtsp://sat.ip` urls with the first command line argument (see below on how to set this up)
- copy the modified `*.m3u` file to `volume1/web/` to be published through WebStation
- change the owner to `http:http` so the file is accessible

## Install on synology

Go to `Control Panel` > `Task Scheduler` and select `Create` > `Scheduled Task` > `User-defined Script`:

To publish the file over http/https, publish it through [WebStation](https://kb.synology.com/en-global/DSM/help/WebStation/application_webserv_desc) (you might need to install it, if not already installed).

