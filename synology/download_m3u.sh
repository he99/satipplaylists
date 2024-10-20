#!/bin/bash
cd /volume1/web
wget -q https://github.com/dersnyke/satipplaylists/raw/refs/heads/main/satip_astra192e.m3u -O satip_astra192e.m3u
sed 's/sat\.ip/satip.werkstatt2.local/g' satip_astra192e.m3u  > x



