#!/bin/bash
set -e

cat << EOF
This is a script to install PIP and Virtualenv for Python on the Chromebook.
It may work on other Debian Linux systems too.

Install Python 3 first as this script *may* need some of those dependencies.

This will:
1. Install pip for Python2 and Python3
2. Install virtualenv for creating virtual environments
3. Add virtualenv to the PATH by creating and updating your .profile file

Warning - Use this script at your own risk.  It may not work on all Chromebooks or setups.
This has been tested on a clean powerwashed Google Pixelbook.
If a step fails, the script will stop.

EOF

read -p "Press Enter to continue ... or Ctrl-C to cancel." START
echo

echo
echo "Installing pip and upgrading to latest version ..."

sudo apt-get install python-pip python3-pip

pip install -U pip


echo
echo "Installing virtualenv ..."

pip install --user virtualenv

echo
echo "Adding virtualenv to your local PATH ..."

[[ -f ~/.profile ]] || touch ~/.profile

if grep -Fq ".local/bin" ~/.profile
then
    echo "Path already seems to exist in ~/.profile.  Skipping this step."
else
    echo -e '\nexport PATH="$PATH:$HOME/.local/bin"' >> ~/.profile
fi

cat << EOF

Finished.

PIP is now installed and can be run using 'pip3' for Python3 and 'pip for Python2.

Virtualenv can be run using 'virtualenv'.  But first close this terminal and reopen it or type 'source ~/.profile'.

EOF

