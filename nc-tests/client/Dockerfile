FROM chilcano/netcat:jessie

RUN apt-get update && apt-get install net-tools

COPY client/ . 

CMD ./client.sh