cd /srv/www/vc3-website-python
virtualenv vc3_website_venv
echo
cd/vc3-website-python
source vc3_website_venv/bin/activate
echo
pip install cherrypy==8.9.1
pip install Flask
pip install pygal
pip install globus-sdk==0.6.0
pip install python-jose
