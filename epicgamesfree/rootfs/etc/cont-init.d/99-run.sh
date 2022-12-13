#!/usr/bin/env bashio
# shellcheck shell=bash

##############
# Initialize #
##############

HOME="/config/addons_config/epicgamesfree"
if [ ! -f "$HOME"/config.json ]; then
    # Copy default config.json
    cp /templates/config.json "$HOME"/config.json
    chmod 777 "$HOME"/config.json
    bashio::log.warning "A default config.json file was copied in $HOME. Please customize according to https://github.com/claabs/epicgames-freegames-node#json-configuration before restarting the addon"
    bashio::exit.nok
fi

# Make symlink for cookies
bashio::log.info "Copying current files"
cd "$HOME" || true
#cp -rnf /usr/app/config/* "$HOME"

# Permissions
chmod -R 777 "$HOME"

##############
# Launch App #
##############

echo " "
bashio::log.info "Starting the app"
echo " "

cd "$HOME" || true

#/./usr/local/bin/docker-entrypoint.sh
