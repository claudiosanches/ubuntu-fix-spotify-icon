#!/usr/bin/env bash

set -e

if [[ "$#" != 1 || "$1" == "-h" || "$1" == "--help" ]]; then cat <<HELP
  Spotify tray icon fixer for Ubuntu.

  Usage:
  fix-spotify-icon [theme]

  Example:
  fix-spotify-icon ambiance

  Available themes:
   - ambiance
   - radiance
HELP
exit;
fi

if [[ "$1" != "ambiance" && "$1" != "radiance" ]]; then cat <<HELP
  Selected theme does not exist, use one of the following themes:
   - ambiance
   - radiance
HELP
exit;
fi

msg() {
  echo ">>> $1"
  sleep 1
}

tmp_dir="/tmp/fix-spotify-icon-$(date +%s)"

msg "Entering temporary directory"
mkdir $tmp_dir
cd $tmp_dir

msg "Making a copy of resources.zip"
cp /opt/spotify/spotify-client/Data/resources.zip resources_old.zip
unzip resources_old.zip -d resources_old/

msg "Downloading icon"
wget -O spotify-linux-512.png https://raw.githubusercontent.com/claudiosmweb/ubuntu-fix-spotify-icon/master/images/$1/spotify-512.png

msg "Replacing the icon"
cp spotify-linux-512.png resources_old/_linux/spotify-linux-512.png

msg "Packaging resources.zip back up"
cd resources_old/
zip -r resources_patched.zip .
cd ..
mv resources_old/resources_patched.zip .

msg "Replacing current resources.zip"
sudo cp resources_patched.zip /opt/spotify/spotify-client/Data/resources.zip

msg "Cleaning up"
rm -rf $tmp_dir

msg "The Spotify icon has been replaced successfuly! Start Spotify again to check it out."
sleep 2
