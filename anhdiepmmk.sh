#!/bin/bash
# USERNAME=$(docker system info | grep Username)

# echo ':::::::::::::::::::: build docker image for backend-node-app ::::::::::::::::::::'
# cd ./backend
# pwd
# docker build -t anhdiepmmk/backend-node-app:latest .
# if [ ! -z "$USERNAME" ]
# then
#   docker push anhdiepmmk/backend-node-app
# fi

# echo ':::::::::::::::::::: build docker image for frontend-react-app ::::::::::::::::::::'
# cd ../frontend
# pwd
# docker build -t anhdiepmmk/frontend-react-app:latest .
# if [ ! -z "$USERNAME" ]
# then
#   docker push anhdiepmmk/frontend-react-app:latest
# fi

run () {
   echo 'run...'
}

start () {
   echo 'start...'
}

stop () {
   echo 'stop...'
}

build () {
   echo 'build...'
}

push () {
   echo 'push...'
}

logs () {
   echo 'logs...'
}

help () {
   echo "What is Lorem Ipsum?
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
    when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
    It has survived not only five centuries, but also the leap into electronic typesetting, 
    remaining essentially unchanged. 
    It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
    and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
  "
}

case $1 in
  "run")
    run
    exit
    ;;
  "start")
    start
    exit
    ;;
  "stop")
    stop
    exit
    ;;
  "logs")
    logs
    exit
    ;;
  "build")
    logs
    exit
    ;;
  "build")
    push
    exit
    ;;
  *)
    help
    exit
    ;;
esac