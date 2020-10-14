# Chromebook - quick Python setup

Installing Python and other developer tools on a Chromebook manually takes time and a bit of a hassle.  

This provides **a set of scripts for installing Python on a Chromebook and creating new projects**.


## Who is this for?

* For Python beginners with a Chromebook - the Linux and Python install is a bit daunting.  Most people want to get started coding rather than spending up to an hour or more doing an install.

* For myself or developers wanting to reinstall after a 'powerwash' - One of the best things about Chromebooks is the ability to do a 'powerwash' which takes only 2-3 minutes and leaves you with a clean new Chromebook. When I powerwash my Chromebook from time, I was finding it a hassle to reinstall Python each time.  These scripts are a time-saver.  

Hopefully they are useful to people in the Python community.  If want to contribute, see [contributors](#contributors) below.


## A health warning

**You use these scripts at your own risk.** 

They are tested on a Google Pixelbook and work cleanly after a powerwash. But they may not work on all Chromebooks.

> Tested on Chrome OS versions:
> - Version 85.0.4183.133
> - Version 86.0.4240.77


## Powerwash on Chromebooks

 So if everything goes wrong on installs or you get lots of instability or crashes, you can use powerwash to start with a clean slate.

Powerwash will completely wipe everything in the Linux machine in your chromebook, so you will have to reinstall Python and other tools.  Doing this manually and looking up all the install commands takes time, and is daunting for those not happy on the Linux command line.  The scripts below were written to make that process faster and a bit more accessible for Chromebook users who might want to explore programming with Python in particular.

I recommend after a Powerwash that the first thing you do is go into the 'Settings / About Chrome' and do an upgrade to the latest version before reinstalling the Linux terminal.


## Python installation

### 1. Starting Chromebook Linux

Start your Linux terminal window.

In your Linux terminal on your Chromebook, get the scripts by cloning the repository:

    git clone https://github.com/ttamg/chromebook

This will copy the script files into a new *chromebook* directory.

![](images/start_linux_and_clone_github.gif)



### 2. Installing Python3

the `install-python.sh` script will install a Python 3 version on your Chromebook.  You can have multiple versions installed at the same time if you like.

From the *chromebook* folder, run the script and say yes to the prompts:

    ./install-python.sh

It will take 5 minutes to run, compile and install.

![](images/install-python.gif)


### 3. Installing pip and virtualenv

There is a separate script to install pip, and virtualenv, that you will need.  This is separate because you only need to install these once, but you might use the *install-python* script multiple times to install multiple versions (if you are keen!).

From the *chromebook* folder:

    ./install-pip-virtualenv.sh

You should now have a working Python installation and can get coding.  See the project **start scripts**.


## Start scripts

These are simple scripts that create new Python or Jupyter projects

### Start new Python project

Starting a new Python project involves creating a new project folder, creating a new virtual environment for you to install Python packages using pip, and then getting started.  It's not hard, but a bit fiddly if you don't do it week in and week out.

The *start-python-project* script automates this:

From the *chromebook* folder:

    ./start-python-project.sh


### Start a new Jupyter project

If you want to use Jupyter notebooks to create some Python code or run some data science analysis, then Jupyter runs well on the Chromebook.

The *start-jupyter-project* script creates a new Python project and virtual environment, and then install Jupyter Lab for you.

From the *chromebook* folder:

    ./start-jupyter-project.sh

![](images/start-jupyter.gif)


## Other developer installation scripts

These scripts are more for those who are probably doing a more serious development project and need these industrial tools.


### Install SQLite

From the command line just use the normal installation command:

    sudo apt-get install sqlite3


### Install Docker

Docker can be quite resource hungry so it may not work well, or at all, on low-end Chromebooks.

This script installs the Docker dependences, Docker and runs the test container to confirm installation worked.

From the *chromebook* folder:

    ./install-docker.sh


### Install Postgres

If you want a local Postgres 

CONTINUE



<a name="contributors"></a>
## Contributors

If you find some bugs in the scripts or updates that should be made, please raise an issue or (better still) PR. I can't promise to fix everything, but would like this to be a resource that helps people, particularly those new to Python.


If we find there are compatibility issues between different Chromebooks and versions then we may need to add different versions of the scripts.  


## Finally

If you find this useful, then please give it a star (click on the Github star at the top right of the screen) so that others find this repo more easily.

If you are a pro and find some bugs for certain Chromebooks in the scripts, or want to create other useful scripts, please do raise an issue or create a pull request.
