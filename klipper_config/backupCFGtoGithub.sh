#!/bin/bash
#backup all .cfg files to github
cd /home/pi
cp *.cfg /home/pi/remote_upload
cd /home/pi/remote_upload
git add .
git commit -m "backup"
git push origin master
cd /home/pi
