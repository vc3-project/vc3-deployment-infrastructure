#!/bin/bash
# Clone the latest vc3-website-python repo into /srv/www
cd /srv/www
git clone https://github.com/vc3-project/vc3-website-python.git

# Create and setup virtualenv within project
cd /srv/www/vc3-website-python
virtualenv vc3-website-python-venv
echo

# Activate venv and install project requirements
cd/vc3-website-python
source vc3-website-python-venv/bin/activate
echo
pip install -r requirements.txt
echo "Successfully installed requirements"

# Copy the portal.config in the root directory into the portal project
cd
cp ~/portal.conf /srv/www/vc3-website-python/portal/
echo "Successfully copied portal.config into project"
exit
