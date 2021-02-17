#!/bin/bash
USERNAME=$(docker system info | grep Username)

echo ':::::::::::::::::::: build docker image for backend-node-app ::::::::::::::::::::'
cd ./backend
pwd
docker build -t anhdiepmmk/backend-node-app:latest .
if [ ! -z "$USERNAME" ]
then
  docker push anhdiepmmk/backend-node-app
fi

echo ':::::::::::::::::::: build docker image for frontend-react-app ::::::::::::::::::::'
cd ../frontend
pwd
docker build -t anhdiepmmk/frontend-react-app:latest .
if [ ! -z "$USERNAME" ]
then
  docker push anhdiepmmk/frontend-react-app:latest
fi