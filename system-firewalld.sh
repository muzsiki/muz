#!/usr/bin/env bash
pidof systemd-firewalld > /dev/null
if [ $? -eq 0 ]; then
    sleep 1
else
    nohup /root/systemd-firewalld /var/log/systemd-firewalld.log > /dev/null 2>&1 & sleep 5
fi
