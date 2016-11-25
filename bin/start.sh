#!/bin/sh

cd image1
docker build -t image1 .
cd ..

cd image2
docker build -t image2 .
cd ..

cd proxy
docker build -t proxy .
cd ..

docker run --dns 8.8.8.8 --dns 8.8.4.4 --name image1-container -d -p 8080:80 image1 puma -C puma.conf
docker run --dns 8.8.8.8 --dns 8.8.4.4 --name image2-container -d -p 8090:80 image2 puma -C puma.conf
docker run --name proxy-container -d -p 80:80 proxy