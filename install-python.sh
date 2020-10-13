#!/bin/bash
set -e

echo "A script to install Python on a Chromebook"
echo
echo "This will:"
echo "1. Install prerequisites needed for Python on a typical Chromebook"
echo "2. Install Python 3 version that you choose"
echo
echo "Use this script at your own risk.  It may not work on all Chromebooks or setups."
echo "This has been tested on a clean powerwashed Google Pixelbook."
echo "If a step fails, the script will stop."
echo
read -p "Press Enter to continue ... or Ctrl-C to cancel." START
echo

echo "Python versions I can install:"
echo "1 = Python 3.9.0"
echo "2 = Python 3.8.6"
echo "3 = Python 3.7.9"
echo "4 = Python 3.6.12"
read -p "Select Python version to install (1-4): " CHOICE

case $CHOICE in

    1)
        VERSION=3.9
        RELEASE=3.9.0
        URL=https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tgz
    ;;

    2)
        VERSION=3.8
        RELEASE=3.8.6
        URL=https://www.python.org/ftp/python/3.8.6/Python-3.8.6.tgz
    ;;

    3)
        VERSION=3.7
        RELEASE=3.7.9
        URL=https://www.python.org/ftp/python/3.7.9/Python-3.7.9.tgz
    ;;

    4)
        VERSION=3.6
        RELEASE=3.6.12
        URL=https://www.python.org/ftp/python/3.6.12/Python-3.6.12.tgz
    ;;

    *)
    echo 
    echo "$CHOICE is not a valid option.  Aborting."
    exit
    ;;
esac

echo
echo "I will compile Python $RELEASE from the source-code."

echo
read -n 1 -p "Are you really sure you want to continue?  (Y/y): " CONFIRM
echo
if [ $CONFIRM != "Y" ] && [ $CONFIRM != "y" ]
then
    echo "Aborting. "
    exit
fi

echo 
echo "Installing pre-requisites ..."
echo "You may be asked to input your administrator 'sudo' password (your password) ..."

sudo apt-get install libffi-dev

sudo apt-get install build-essential checkinstall

sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev \
    libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

echo "Done."
echo
echo "Downloading Python $RELEASE from Python.org ..."

[[ -d /usr/src ]] || sudo mkdir /usr/src
cd /usr/src

sudo wget $URL

echo
echo "Unpacking and compiling Python ... this may take some time ... "

sudo tar xzf Python-$RELEASE.tgz

cd Python-$RELEASE

sudo ./configure --enable-optimizations

sudo make altinstall

echo
echo "Python installed.  Checking installation ..."

python$VERSION -V

echo "You can start python by typing 'python$VERSION' from the command line."
echo
echo "Finished."
