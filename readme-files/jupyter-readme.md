# Jupyter project notes

## Starting Jupyter

First, activate the virtual environment, from this project folder:

    source .venv/bin/activate

_Replace the '.venv' with the name of the virtual environment we created_ Type 'ls -al' if you can't see it.

Start the Jupyter Lab server using:

    jupyter lab

Your browser should automatically open with a new Jupyter session. Alternatively go to http://localhost:8888 in your browser.

## Shutting down Jupyter

From this command line hit Ctrl-C to stop to stop the Jupyter server.

To clean up fully, deactivate the virtual environment, typing:

    deactivate

## Installing additional packages

You may want Pandas or other Python packages in Jupyter. Install them from the command line using:

    pip install package_name

Remember to restart the Kernel in Jupyter Lab, or stop and restart the Jupyter server so that your newly installed package is recognised.
