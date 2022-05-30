#!/bin/sh

docker image rm ces362_image
docker build -t ces362_image .
docker run --rm -v ${PWD}/:/usr/src/Sairem-ces362/ --name ces362_container ces362_image ./dockerCommands.sh
docker image rm ces362_image
return 0
