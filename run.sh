#!/bin/bash

docker volume create H2-DB-data

docker run -itd -v H2-DB-data:/h2-data --name h2 -p 9092:9092 -p 9093:9093 h2-db

docker exec -it h2  /opt/h2/createDb.sh
