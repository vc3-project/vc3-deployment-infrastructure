# vc3-deployment-infrastructure

These 2 bash scripts will

1) pull the latest vc3-website-python git repo, set up the virtual environment necessary for deployment, and
2) start the server


Add these two .sh bash scripts into your Virtual Machine (VM) root directory.

Run the follow command to execute the first script:

    ~/setup_vc3_project.sh

This will clone the latest vc3-website-python git repository into the /srv/www directory.

Once the repo is set up, the script will begin to set up a virtual environment in the vc3-website-python project folder, and automatically pip install CherryPy, Flask, along with the rest of the requirements listed in the vc3 requirements.txt

Finally, run the following script to start the server:

    ~/start_server.sh

This will activate the virtualenv and execute run_portal.py to start the server.

The server will continue to run in the background until you manually kill it.

In order to restart the server, find the PID for run_portal.py by running:

    ps auxw | grep python

The PID for run_portal.py will change each time the server restarts. In order to kill the server run:

    kill (PID#_HERE)
