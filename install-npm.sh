#!/bin/bash
set -e

cat << EOF

This is a script to install Node JS and NPM.
It may work on other Debian Linux systems too.

This will:
1. Install prerequisites for Node
2. Install Nodejs and NPM

Warning - Use this script at your own risk.  It may not work on all Chromebooks or setups.
This has been tested on a clean powerwashed Google Pixelbook.
If a step fails, the script will stop.

EOF

read -p "Press Enter to continue ... or Ctrl-C to cancel." START
echo

echo
echo "Installing prerequisites ..."
echo "You may be asked to input your administrator 'sudo' password (your password) ..."

sudo apt-get update

sudo apt-get install curl gnupg

echo
echo "Install Nodejs ..."

curl -fsSL https://deb.nodesource.com/setup_15.x | sudo -E bash -

sudo apt-get update

sudo apt-get install -y nodejs

echo
echo Installed Node version
node -v
echo
echo "Finished."
echo

