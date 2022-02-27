# !/bin/bash

rm -rf ips.lst
curl -s https://www.cloudflare.com/ips-v4 -o ./ips.lst
echo "" >> ./ips.lst
curl -s https://www.cloudflare.com/ips-v6 >> ./ips.lst

cat ips.lst | while read line
do
   ufw allow from $line to any port 443
done