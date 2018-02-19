#!/bin/bash
now=$(date +"%m-%d-%Y-%H-%M-%S")
mkdir $now
cd $now
git clone https://github.com/GUSCRAWFORD/guscrawford.com.git
cd guscrawford.com
npm run update
npm run build.ui
npm run build.api
sudo rm /var/www/active-site
cd /var/www
sudo ln -s /home/ubuntu/$now/guscrawford.com/ui.guscrawford.com/dist active-site
cd ~/$now/guscrawford.com
