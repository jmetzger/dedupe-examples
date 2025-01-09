#!/bin/bash 
dnf install -y python3-devel python3-pip git
dnf install -y MariaDB-devel gcc zlib-devel openssl-devel 
pip3 install -r requirements.txt
echo "create schema if not exists contributions" | mysql
echo "Starting import - this will take its time" 
date
python3 mysql_init_db.py 
date

