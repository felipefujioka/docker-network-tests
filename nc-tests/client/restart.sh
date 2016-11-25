docker stop client-container
docker rm client-container

docker build -t netcat-client client/.

docker run -d --name client-container -p 8090:8090 netcat-client