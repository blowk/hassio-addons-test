#!/usr/bin/with-contenv bashio
# shellcheck shell=bash

# Create files
CONFIG_LOCATION="/config/addons_config/jellyseer"
bashio::log.info "Config stored in $CONFIG_LOCATION"
mkdir -p "$CONFIG_LOCATION"
cp -rn /app/config/* "$CONFIG_LOCATION"
cp -rn /app/* /data/
rm -r /app/config
ln -s "$CONFIG_LOCATION" /data/config

# Create files
export JELLYFIN_TYPE=$(bashio::config 'TYPE')
export TZ=$(bashio::config 'TZ')

yarn start
