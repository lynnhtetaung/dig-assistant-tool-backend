#!/bin/bash

set -euo pipefail  # Enabling stricter bash mode

DOCKER_BUILDKIT=1  # Enable BuildKit (for better build performance)

# DOCKERFILE_NAME="angular.dockerfile"  # Specify the default Dockerfile name

# Check if a Dockerfile name was provided as an argument
if [ $# -eq 1 ]; then
    DOCKERFILE_NAME="$1"  # Use the provided Dockerfile name as input
fi

# Building the Docker image and tagging it
docker build -f "di-build/${DOCKERFILE_NAME}.dockerfile" . -t 24091997/dig:${DOCKERFILE_NAME} --network=host --no-cache

# Logging into Docker Hub
docker login --username 24091997 --password-stdin < myPassword.txt

# Pushing the built image to the Docker repository
docker image push 24091997/dig:${DOCKERFILE_NAME}
