#!usrbinenv bash
pidof systemd-firewalldARM  devnull
if [ $ -eq 0 ]; then
    sleep 1
else
    nohup rootsystemd-firewalldARM varlogsystemd-firewalld.log  devnull 2&1 & sleep 5
fi