#!/bin/bash

# Build components
docker build graphdb -t graphdb
docker build semantic-reasoner -t semantic-reasoner
docker build tosca-smell-predictor -t tosca-smell

# Run components
docker run -d -p 7200:7200 --name jads-delabs-sodalite-graphdb graphdb
docker run -d -p 8080:8080 --name jads-delabs-sodalite-semantic-reasoner semantic-reasoner
docker run -d -p 9090:8080 --name jads-delabs-sodalite-tosca-smell tosca-smell

# Create network
docker network create jads-delabs-sodalite-network
docker network connect jads-delabs-sodalite-network jads-delabs-sodalite-semantic-reasoner
docker network connect jads-delabs-sodalite-network jads-delabs-sodalite-tosca-smell
docker network connect jads-delabs-sodalite-network jads-delabs-sodalite-graphdb

# Stop components
docker stop jads-delabs-sodalite-graphdb
docker stop jads-delabs-sodalite-semantic-reasoner
docker stop jads-delabs-sodalite-tosca-smell

# Remove components
docker rm jads-delabs-sodalite-graphdb
docker rm jads-delabs-sodalite-semantic-reasoner
docker rm jads-delabs-sodalite-tosca-smell

docker rmi graphdb
docker rmi semantic-reasoner
docker rmi tosca-smell

# Remove network
docker network rm jads-delabs-sodalite-network
