
#!/bin/bash
#Script to install and run TOR Browser.
sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get install -y coreutils
sudo apt-get install -y curl
sudo apt-get install -y grep
sudo apt-get install -y wget
sudo apt-get install -y tar
sudo apt-get install -y xz-utils
sudo apt-get install -y xdg-utils

sudo apt-get install -y libdbus-glib-1-2
sudo apt-get install -y torbrowser-launcher
sudo apt-get install -y gnupg2
sudo apt-get install -y libgtk-3-0
sudo apt-get install -y libevent-2.1-7
sudo apt-get install -y tor

echo " "
echo "Installing and activating TOR Browser using a Knexyce TOR Script."
echo "Please do not close the terminal. This is to prevent errors."
echo "This script is designed for Linux and some Bash systems."
echo " "

base_url="https://www.torproject.org/dist/torbrowser/"
tmp_file="tor_browser_version.txt"
latest_tarball="tor-browser-linux-x86_64-latest.tar.xz"
curl -s https://www.torproject.org/download/ | grep -oP 'href="\Ktorbrowser[^"]+' | grep -oP '\d+\.\d+\.\d+' | head -1 > $tmp_file
version=$(cat $tmp_file)
latest_url="${base_url}${version}/tor-browser-linux-x86_64-${version}.tar.xz"
rm $tmp_file
echo " "

wget -O $latest_tarball "$latest_url"
tar -xvJf $latest_tarball
rm $latest_tarball
echo " "
ls -d tor-browser*
cd "tor-browser_'${version}'"
cd "tor-browser"
cd tor-browser*
echo " "
chmod +x start-tor-browser.desktop
./start-tor-browser.desktop

echo " "
echo "TOR Browser successfully installed and launched by Knexyce."
echo " "
echo "If TOR Browser has not been installed and/or launched as intended: "
echo "If TOR Browser has not been installed correctly, there may be a system error or the terminal may have been closed while the script was running."
echo "If TOR Browser has not launched, there may be an error with script or the current system that is executing this script."
echo "This script is designed to install '${latest_tarball}' and launch it on Linux or some Bash systems."
echo "There may be a newer version of TOR if there is a download error."
echo "If any errors occured while navigating to the TOR Browser directory: It is likely not an issue as long as you are in the correct directory as of now while this message is displaying."
echo "Another reason the script may have not worked is if you have ran out of space for the script to function as intended."
echo "Check https://www.torproject.org/ for more info."
echo "You may now close the terminal."
echo "All rights of this software are reserved by Knexyce."
echo " "

# Script made by Ayan Alam/Knexyce-003 in 2024 AD.
# All rights reserved by Knexyce.
