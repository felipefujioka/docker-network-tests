#!/bin/sh

docker stop image1-container
docker rm image1-container

docker stop image2-container
docker rm image2-container

docker stop proxy-container
docker rm proxy-container

./bin/start.sh