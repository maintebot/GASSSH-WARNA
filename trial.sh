#!/bin/bash
#Script auto create trial user SSH
#will expired after 1 day
#GASSS 🔥🔥🔥

IP=`dig +short myip.opendns.com @resolver1.opendns.com`

Login=trial`</dev/urandom tr -dc X-Z0-9 | head -c4`
hari="1"
Pass=`</dev/urandom tr -dc a-f0-9 | head -c9`

useradd -e `date -d "$hari days" +"%Y-%m-%d"` -s /bin/false -M $Login
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "====SSH Account Information====" | lolcat
echo -e "Host: $IP" | lolcat
echo -e "Username: $Login " | lolcat
echo -e "Password: $Pass" | lolcat
echo -e "Port OpenSSH: 22"  | lolcat
echo -e "Port Dropbear: 143, 456, 999"  | lolcat
echo -e "Port SSL: 443,444,445,446" | lolcat
echo -e "Port OpenVPNSSL: 990" | lolcat
echo -e "Port Squid: 80,8080 (limit to IP SSH)" | lolcat
echo -e "Config SSL: http://$IP:81/ssl.conf" | lolcat
echo -e "Config OpenVPNSSL: http://$IP:81/openvpnssl.ovpn" | lolcat
echo -e "Config OpenVPN (TCP 1194): http://$IP:81/client.ovpn" | lolcat
echo -e "badvpn: badvpn-udpgw port 7200" | lolcat
echo -e "=============================" | lolcat
echo -e "Expiration: $exp" | lolcat
echo -e "=============================" | lolcat
echo -e "GASSS 🔥🔥🔥" | lolcat
echo -e "=============================" | lolcat
echo -e "Join us : " | lolcat
echo -e "https://t.me/MAINTEBOT" | lolcat
echo -e ""
