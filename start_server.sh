#!/bin/bash

cd /srv/www/vc3-website-python
source vc3_website_venv/bin/activate
nohup python run_portal.py  &> /root/nohup.out &
