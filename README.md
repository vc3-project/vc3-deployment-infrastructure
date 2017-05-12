# vc3-deployment-infrastructure

These 3 bash scripts will

1) pull the latest vc3-website-python git repo, set up the virtual environment necessary for deployment
2) start the server
3) Updates the pages directory with the latest flatpages repo to display news article on vc3-website


Add these .sh bash scripts into your Virtual Machine (VM) root directory.

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

To update the News pages with the latest vc3-flatpages repo, run:
    
    ~/update_pages_directory.sh

This script will make a temporary directory /tmp/pages.XXXXXX, which will pull the latest vc3-flatpages repo and copy the markdown (.md) files into the proper location inside the vc3-website-python. This will update the VC3 website's News page with the latest markdown articles. The script will terminate the temporary directory upon completion.
