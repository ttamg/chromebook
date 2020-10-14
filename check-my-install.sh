#!/bin/bash

cat << EOF
This is a script to show if Python, pip and virtualenv are installed.

This will:
1. Run 'which python3.x' to see which Python 3 versions are installed
2. See if pip and pip3 are installed
3. See if virtualenv is installed and on the PATH

EOF

read -p "Press Enter to continue ... or Ctrl-C to cancel." START
echo

echo
echo "Checking which Python 3 versions are installed ..."

for I in python3.10 python3.9 python3.8 python3.7 python3.6 python3.5 python3
do
    if [[ $(which $I) != "" ]]
    then
        echo
        echo "$($I -V) installed - can be accessed by typing '$I'"
    fi
done

echo
echo "Checking pip in Python 2 and 3 ... "

python -m pip -V
python3 -m pip -V

echo
echo "Checking virtualenv installed ..."

python -m virtualenv --version

echo
echo "Checking virtualenv is on the PATH by typing 'virtualenv' ..."
virtualenv --version

echo
echo "Finished.  Check for errors above."

