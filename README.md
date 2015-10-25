# Fix Spotify tray icon on Ubuntu

Since Ubuntu 14.04, Spotify uses a low resolution icon in the system tray. You can [replace the icon manually](http://askubuntu.com/questions/449392/how-to-fix-fuzzy-spotify-icon-in-the-icon-tray). But the icon is overwritten whenever Spotify updates. In other words, you have to fix the icon every time Spotify is updated. 

This script is a fork of [faviouz/fix-spotify-icon](https://github.com/faviouz/fix-spotify-icon) and allows you change icons for Ubuntu Ambiance and Radiance themes.

## Installation

Run this one-liner to automagically install and run the script:

```bash
wget https://raw.githubusercontent.com/claudiosmweb/ubuntu-fix-spotify-icon/master/setup.sh -O - | sh
```

If you don't trust me you can inspect the source of the installation script and install it yourself ;)

## Usage

```bash
fix-spotify-icon [theme]
```

### Available Themes
   
 - ambiance
 - radiance

## Contribute

Do not cry! Submit a Pull Request!
