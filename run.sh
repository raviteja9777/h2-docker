#!/bin/bash

docker run -itd --rm --name h2 -p 9092:9092 -p 9093:9093 h2-db

docker exec -it h2  /opt/h2/createDb.sh

