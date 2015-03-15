#!/bin/bash
umask 000

chown -R root:root /couchpotato /config

exec /sbin/setuser root python /couchpotato/CouchPotato.py --config_file=/config/config.ini --data_dir=/config/data
