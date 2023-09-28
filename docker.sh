#!/bin/bash

# Step 1: Update the system
sudo yum update -y

# Step 2: Install required dependencies
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Step 3: Add Docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Step 4: Install Docker
sudo yum install -y docker-ce

# Step 5: Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Step 6: Verify Docker installation
docker --version

# Step 7: Run a Docker test container
docker run hello-world
