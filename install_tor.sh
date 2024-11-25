
#!/bin/bash
#Script to install and run TOR Browser.

sudo apt-get -y update
sudo apt-get install -y sudo
sudo apt-get install -y apt
sudo apt-get install -y coreutils
sudo apt-get install -y curl
sudo apt-get install -y grep
sudo apt-get install -y wget
sudo apt-get install -y tar
sudo apt-get install -y xz-utils
sudo apt-get install -y xdg-utils
sudo apt-get -y dist-upgrade
sudo apt-get -y full-upgrade

echo " "
echo "Installing and activating TOR Browser using a Knexyce TOR Script."
echo "Please do not close the terminal. This is to prevent errors."
echo "This script is designed for Linux and/or Linux based systems."
echo " "

rm -vfr tor-browser
latest_version=$(curl -s https://gitlab.torproject.org/tpo/web/tpo/-/raw/main/databags/versions.ini | grep -A1 '\[torbrowser-linux-stable]' | grep -oP '(?<=version = ).*')
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
echo "TOR Browser installed and launched by a Knexyce code script, (install_tor.sh)."
echo " "
echo "If TOR Browser has not been installed and/or launched as intended: "
echo "If TOR Browser has not been installed correctly, the code may not be executing on the intended system or the terminal may have been closed while the script was running."
echo "If TOR Browser has not launched, there may be an error with the script or the current system that is executing this script."
echo "This script is designed to install and launch '${latest_tarball}' on Linux and/or some Linux based systems."
echo "A reason for errors or malfunctions might be due to missing dependencies and/or permissions."
echo "Another reason the script may have not worked is if you have run out of space for the script to function as intended."
echo "Check https://www.torproject.org/ for more info."
echo "You may now close the terminal."
echo "All rights of this software are reserved by Knexyce."
echo " "

# Script made by Ayan Alam/Knexyce-003 in 2024 AD.
# All rights reserved by Knexyce.
