#!/bin/bash
 docker run -p 8081:3001 -d ajsatix/nodeapi -e PORT=$PORT -e DB='mydb' -e DBUSER='postgres' -e DBPASS='postgres' -e DBHOST=$DBHOST - e DBPORT=5432
