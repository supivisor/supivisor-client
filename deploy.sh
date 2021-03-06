#!/bin/bash

# Update project
git checkout main
git pull

# Install required npm packages
npm install

# Build project
ng build

# Move compiled app into deployment server home directory (nginx in my case)
sudo cp -r dist/supivisor /var/www/

# Restart server service
sudo service nginx restart
