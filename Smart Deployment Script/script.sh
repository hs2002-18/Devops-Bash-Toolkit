#!/bin/bash

#exit if any command fails
set -e

APP_DIR = "/home/user/app"  #your app directory path
BRANCH = "your branch"      #name of the branch you push code to

echo "Starting Deployment"
cd $APP_DIR || exit         # move into your app directory and the exit insures if no folder is present, the execution stops

echo "Pulling latest Updates"
git pull origin $BRANCH     #pulls the latest updated from you branch

echo "Installing Dependencies"
npm install                 # installs the required packages, also ensures that new dependencies are installed

echo "Building Application"
npm run build               # builds the application

echo "Restarting Services"
pm2 restart app || pm2 start app.js --name app #restarts the application, if application is not running, starts it and gives it the name app.
#This ensures zero downtime and app always stays running

echo "Deployment Successful"