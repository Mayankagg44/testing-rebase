#!/usr/bin/env bash

echo "In docker-fe.sh now"
echo "Cloning in Git repo"
git clone https://github.com/Mayankagg44/es6-sample-project
ls es6-sample-project/

#echo "Running a docker container"
#sudo docker run -itd --name jobbot-frontend nginx
echo "Stopping a docker container"
sudo docker stop jobbot-frontend
echo "Removing a docker container"
sudo docker rm jobbot-frontend
echo "rerun the container"
sudo docker run -itd --name jobbot-frontend nginx
echo "Done"
