 #!/bin/bash

   DOCKER_BINARY="/usr/bin/docker"  # Update this path according to your system


    set -x #echo on

    variableA=$(docker build -f di-build/Soe.dockerfile . -t 24091997/dig:Soe --network=host --no-cache)

    echo "$variableA"

    cat myPassword.txt | docker login --username 24091997 --password-stdin

    docker image push 24091997/dig:Soe

