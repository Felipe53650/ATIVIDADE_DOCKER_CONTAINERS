#!/bin/bash

sudo yum update -y
sudo amazon-linux-extras install docker
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker ec2-user
sudo curl -L
"https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o/usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo systemctl restart docker
sudo yum install -y nfs-utils
sudo yum install -y amazon-efs-utils
sudo mkdir -p /mnt/efs
