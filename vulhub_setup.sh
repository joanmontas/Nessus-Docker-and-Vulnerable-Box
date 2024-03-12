#!/bin/bash

# Copyright Joan Montas
# All rights reserved.
# License under GNU General Public License v3.0

# download and unzip if not done so already
if [ ! -d "vulhub" ]; then
    mkdir -p vulhub
    cd vulhub
    wget https://github.com/vulhub/vulhub/archive/master.zip -O vulhub-master.zip
    unzip vulhub-master.zip
    cd ..
else
    echo "NOTE: Vulhub already exists, skipping download."
fi

cd vulhub

# Make sure the docker-compose can be found
if [ ! -d "vulhub-master/flask/ssti" ]; then
    echo "ERROR: Could not change directory vulhub's docker-compose location!"
    exit 1
fi

cd vulhub-master/flask/ssti

if [ ! -f "docker-compose.yml" ]; then
    echo "ERROR: Could not find vulhub's docker-compose.yml!"
    exit 1
fi

# setup the docker
docker-compose build

docker-compose up -d

exit 0