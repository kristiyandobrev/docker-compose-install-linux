#!/bin/bash

# Update and upgrade
sudo apt-get update -y && sudo apt-get upgrade -y

# Install Docker
curl -sSL https://get.docker.com | sh

# Add permission to current user
sudo usermod -aG docker ${USER}

# Install Python
sudo apt-get install libffi-dev libssl-dev -y
sudo apt install python3-dev -y
sudo apt-get install -y python3 python3-pip -y

# Install Docker-Compose
sudo pip3 install docker-compose

#Enable Docker system service
sudo systemctl enable docker
