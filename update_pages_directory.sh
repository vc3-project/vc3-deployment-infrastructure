#!/bin/bash
# Update the Pages directory with latest vc3-flatpages repo

PAGES_DIR="/srv/www/vc3-web-env/portal/pages"

# Start at home directory
cd

# Create temporary pages directory to pull latest vc3-flatpages repo
DIR=$(mktemp -d -t pages.XXXXXX) || exit 1

# print directory name for user
cd ${DIR}
echo "Created temporary pages directory at: ${DIR}"
echo

# Git Clone the vc3-flatpages repo into temporary directory
git clone https://github.com/vc3-project/vc3-flatpages.git .
echo
echo "Latest VC3-Flatpages Repo temporarily cloned into: ${PWD}"
echo
rm -rf README.md

# Copy files recursively into destination
mkdir -p ${PAGES_DIR}
# rm * ${PAGES_DIR}

# Copy files from temporary pages directory into vc3-web-env project
cp -r ${DIR}/*\.md ${PAGES_DIR}
echo "Successfully copied files into ${PAGES_DIR}"

# When the script terminates, run the 'rm' command to delete the temp pages folder
trap "rm -rf '${DIR}'" EXIT
