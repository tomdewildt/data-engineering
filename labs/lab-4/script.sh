#!/bin/bash

# Build stack
docker-compose -p sodalite -f docker-compose.yml build

# Run stack
docker-compose -p sodalite -f docker-compose.yml up

# Remove stack
docker-compose -p sodalite -f docker-compose.yml rm
