#!/bin/bash
umask 000

chown -R root:root /couchpotato /couchpotato-data

exec /sbin/setuser root python /couchpotato/CouchPotato.py --config_file=/couchpotato-data/config/config.ini --data_dir=/couchpotato-data/config/data
