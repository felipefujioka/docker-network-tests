docker stop server-container
docker rm server-container

docker build -t netcat-server .

docker run -d --name server-container -p 8080:8080 netcat-server