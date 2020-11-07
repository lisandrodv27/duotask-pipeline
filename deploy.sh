#! /bin/bash

ssh -i /home/lisandrodv27/.ssh/id_rsa lisandrodv27@34.105.147.122 << EOF 
sudo docker pull lisandrodv27/flask-app:1.0
sudo docker run -d -p 5000:5000 --name=flask-app lisandrodv27/flask-app:1.0
git clone https://github.com/LukeBenson/duo-task.git
cd duo-task
sudo docker run -d -p 80:80 --mount type=bind,source=./duo-task/nginx.conf,target=/etc/nginx/nginx.conf --name nginx nginx:latest
EOF
