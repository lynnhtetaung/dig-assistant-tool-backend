# #!/bin/bash

# DOCKER_BINARY="docker"  # Update this path according to your system
# DF_NAME="flask"  # Replace with your Dockerfile name

# set -x #echo on

# # Build the Docker image
# variableA=$($DOCKER_BINARY build -f di-build/$DF_NAME.dockerfile . -t 24091997/dig:$DF_NAME --network=host --no-cache)

# echo "$variableA"

# # Log in to Docker Hub using the generated access token
# echo "dckr_pat_zVc7VxSi8N6ZDERWHf5N8G48OxU" | $DOCKER_BINARY login --username 24091997 --password-stdin

# # Push the Docker image
$DOCKER_BINARY image push 24091997/dig:$DF_NAME

#!/bin/bash

DOCKER_BINARY="/usr/bin/docker"  # Update this path according to your system
DF_NAME="your_dockerfile_name"  # Replace with your Dockerfile name

set -x #echo on

# Build the Docker image
variableA=$("$DOCKER_BINARY" build -f di-build/$DF_NAME.dockerfile . -t 24091997/dig:$DF_NAME --network=host --no-cache)

echo "$variableA"

# Log in to Docker Hub using the generated access token
echo "dckr_pat_zVc7VxSi8N6ZDERWHf5N8G48OxU" | "$DOCKER_BINARY" login --username 24091997 --password-stdin

# Push the Docker image
"$DOCKER_BINARY" image push 24091997/dig:$DF_NAME





