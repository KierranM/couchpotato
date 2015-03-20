#!/bin/bash

# move into couchpotato directory
cd /couchpotato
# update couchpotato
git pull

CONFIG="/couchpotato-data/config"

 # first time run copy config
if [[ ! -f $CONFIG/config.ini ]]; then
  # copy the file to the config directory, making it if necessary
  mkdir -p $CONFIG
  cp -a /tmp/config.ini $CONFIG/config.ini
fi
