#!/bin/bash

# move into couchpotato directory
cd /couchpotato
# update couchpotato
git pull

CONFIG="/config"

if [[ ! -f $CONFIG/config.ini ]]; then
  # copy the file to the config directory, making it if necessary
  mkdir -p $CONFIG
  cp -a /tmp/config.ini $CONFIG/config.ini
fi

if [[ -n ${USERNAME} ]]; then
  echo "The username is: ${USERNAME}"
  sed -i "s/couchpotato-user/${USERNAME}/g" $CONFIG/config.ini
fi

if [[ -n ${PASSWORD} ]]; then
  echo "The password is: ${PASSWORD}"
  sed -i "s/couchpotato-password/${PASSWORD}/g" $CONFIG/config.ini
fi
