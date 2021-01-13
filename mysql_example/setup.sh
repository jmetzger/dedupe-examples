#!/bin/bash 
apt update
apt install -y python3-dev default-libmysqlclient-dev build-essential
apt install -y python3-pip
apt remove -y python2.7
apt autoremove -y  
pip3 install -r requirements.txt
echo "create schema if not exists contributions" | mysql
echo "Starting import - this will take its time" 
date
python3 mysql_init_db.py 
date

