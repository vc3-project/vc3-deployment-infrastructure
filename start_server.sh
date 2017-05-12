#!/bin/bash

cd /srv/www/vc3-website-python
source vc3-website-python-venv/bin/activate
nohup python run_portal.py  &> /root/nohup.out &
