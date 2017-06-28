#!/bin/bash

rm Dockerfile.arm
cp Dockerfile Dockerfile.arm

sed -i '' 's/node:latest/hypriot\/rpi-node:latest/g' Dockerfile.arm

rm docker-compose.arm.yml
cp docker-compose.yml docker-compose.arm.yml


sed -i '' 's/mongo:latest/hypriot\/rpi-mongo:latest/g' docker-compose.arm.yml
sed -i '' 's/build: ./image: busbyjon\/zenbot:arm/g' docker-compose.arm.yml
sed -i '' 's/.\/data\/db/\/data\/zenbot-db/g' docker-compose.arm.yml
