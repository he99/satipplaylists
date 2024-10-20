# call as bash /pathto/script.sh satip.werkstatt2.local
cd /volume1/web
wget -q https://github.com/dersnyke/satipplaylists/raw/refs/heads/main/satip_astra192e.m3u -O satip_astra192e.m3u
sed "s/sat\.ip/"$1"/g" satip_astra192e.m3u  > satip.m3u



