#!/bin/bash
set -e

cat << EOF

This is a script to install Docker on a Chromebook.
It may work on other Debian Linux systems too.

This will:
1. Install prerequisites for Docker
2. Install Docker
3. Test installation using the Hello World container

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

sudo apt-get install apt-transport-https ca-certificates \
curl gnupg-agent software-properties-common

echo
echo "Download and install Docker ..."

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
stable"

sudo apt-get update

sudo apt-get install docker-ce

echo
echo "Finished."
echo

read -p "Press Enter to run the 'Hello World' Docker container as a test: " START
echo

sudo docker run hello-world

