#!/bin/bash

# Create directory
mkdir checkpoint

# Set permissions
sudo chmod -R 777 notebooks/
sudo chmod -R 777 data/
sudo chmod -R 777 checkpoint/

# Build spark
docker-compose -p spark -f docker-compose.yml build

# Run spark
docker-compose -p spark -f docker-compose.yml up

# Remove spark
docker-compose -p spark -f docker-compose.yml rm
