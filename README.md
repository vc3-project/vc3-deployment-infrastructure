# vc3-deployment-infrastructure

These 3 bash scripts will

1) pull the latest vc3-website-python git repo,
2) set up the virtual environment necessary for deployment, and
3) start the server


Add these three .sh bash scripts into your Virtual Machine (VM) root directory.

Run the follow command to execute the first scritp:

    ~/script_1_get_vc3_git.sh

This will clone the latest vc3-website-python git repository into the /srv/www directory.

Next, set up the virtual environment by running:

    ~/setup_vc3_env.sh

This will set up a virtual environment in the vc3-website-python project folder, and automatically pip install CherryPy, Flask, PyGal, Globus-SDK, and Python-Jose.

Finally, run the follow script to start the server:

    ~/start_server.sh

This will activate the virtualenv and execute run_portal.py to start the server.

The server will continue to run until you manually kill it.

In order to restart the server, run:

    ps auxw | grep python

The PID for run_portal.py will change each time the server restarts. In order to kill the server run:

    kill (PID-#-HERE)
