#!/bin/bash

# Exit if any command fails
set -e

# This command uses BookStack's documentation for Ubuntu 22.04 install script and installs it.
wget https://raw.githubusercontent.com/BookStackApp/devops/main/scripts/installation-ubuntu-22.04.sh

# This line makes the newly downloaded script executable.
chmod a+x installation-ubuntu-22.04.sh

# This line runs the executable to install the server.
sudo ./installation-ubuntu-22.04.sh

# NOTE: During these first steps, after step 3, you should be prompted for your domain. If you don't have one,
# then use the server's IP address instead so you can still access it.

# This command installs the core snap, refreshes it to check for updates, and installs the classic certbot.
sudo snap install core; sudo snap refresh core
sudo snap install --classic certbot

# This command configures HTTPS for our Apache service. It will ask for the domain you're setting up, which you need to input.
sudo certbot --apache

# After the HTTPS certificate is configured, we need to slightly update the server's .env file to work with HTTPS instead of HTTP.

# This command updates the APP_URL in our .env file from HTTP to HTTPS.
sudo sed -i 's|APP_URL=http://|APP_URL=https://|' /var/www/bookstack/.env

# This ensures our server is up to date by restarting Apache.
sudo systemctl restart apache2

# Now, you should be good to go. However, if the server still seems slightly off, like showing an hourglass, it might be because
# it takes time to load all the assets properly. If after around 10 minutes it still hasn't settled, try running the command
# below. NOTE: This must be done in the directory "/var/www/bookstack/". Also, it can cause damage if not done properly,
# so PLEASE make sure to be in the correct directory, give it time to execute, and read prompts thoroughly.

# php artisan bookstack:update-url http://your.domain.extension https://your.domain.extension
