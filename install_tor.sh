
#!/bin/bash
#Script to install and run TOR Browser.

sudo apt-get -y update
sudo apt-get install -y coreutils
sudo apt-get install -y curl
sudo apt-get install -y grep
sudo apt-get install -y wget
sudo apt-get install -y tar
sudo apt-get install -y xz-utils
sudo apt-get install -y xdg-utils
sudo apt-get -y upgrade

echo " "
echo "Installing and activating TOR Browser using a Knexyce TOR Script."
echo "Please do not close the terminal. This is to prevent errors."
echo "This script is designed for Linux and some Bash systems."
echo " "

latest_version=$(curl -s https://gitlab.torproject.org/tpo/web/tpo/-/raw/main/databags/versions.ini | grep -A1 '\[torbrowser-linux-stable\]' | grep -oP '(?<=version = ).*')
base_url="https://www.torproject.org/dist/torbrowser/"
latest_tarball="tor-browser-linux-x86_64-$latest_version.tar.xz"
wget "${base_url}${latest_version}/${latest_tarball}"
tar -xvJf $latest_tarball
rm $latest_tarball
ls -d tor-browser*
cd tor-browser
chmod +x start-tor-browser.desktop
./start-tor-browser.desktop
cd ..

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
