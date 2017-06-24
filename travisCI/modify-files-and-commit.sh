#!/bin/bash
YEAR=$(date +"%Y")
MONTH=$(date +"%m")
cd $TRAVIS_BUILD_DIR

#Remove Remotes Added by TravisCI
git remote rm origin

#Add Remote with Secure Key
git remote add origin https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git

#List Remotes ONLY DURING testing - do not do this on live repo / possible key leak
#git remote -v

# Set Git Variables
git config --global user.email "${GIT_EMAIL}"
git config --global user.name "${GIT_NAME}"
git config --global push.default simple

# Make sure we have master branch checked out in Git
git checkout master

# Modify our files with build and version information
sudo $TRAVIS_BUILD_DIR/travisCI/modify-globalblacklist.sh
sudo $TRAVIS_BUILD_DIR/travisCI/modify-readme.sh

# Touch a file before committing
sudo touch $TRAVIS_BUILD_DIR/google-disavow.txt

# Add the modified files and commit
git add -A
git commit -am "V2.$YEAR.$MONTH.$TRAVIS_BUILD_NUMBER [ci skip]"

# Travis now moves to the before_deploy: section of .travis.yml