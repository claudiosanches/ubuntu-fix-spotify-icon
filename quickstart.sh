#!/usr/bin/env bash

set -e

wget -O fix-spotify-icon.sh https://raw.githubusercontent.com/claudiosmweb/ubuntu-fix-spotify-icon/master/fix-spotify-icon.sh

chmod +x fix-spotify-icon.sh

sudo mv fix-spotify-icon.sh /usr/local/bin/fix-spotify-icon

fix-spotify-icon
