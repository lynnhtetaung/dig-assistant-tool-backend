@echo off

REM Check if a Dockerfile name was provided as an argument
if "%~1" neq "" (
    set "DOCKERFILE_NAME=%~1"  REM Use the provided Dockerfile name as input
) else (
    set /p DOCKERFILE_NAME="Enter Dockerfile name: "
)

REM Building the Docker image and tagging it
docker build -f "di-build\%DOCKERFILE_NAME%.dockerfile" -t 24091997/dig:%DOCKERFILE_NAME% --network=host --no-cache

REM Saving the built Docker image to a tar file using WSL command
wsl docker save 24091997/dig:%DOCKERFILE_NAME% -o "/mnt/c/Users/pc7/Documents/develop/upc-v2/upc/media/documents/%DOCKERFILE_NAME%.tar"

REM Logging into Docker Hub
docker login --username 24091997 --password-stdin < myPassword.txt

REM Pushing the built image to the Docker repository
docker image push 24091997/dig:%DOCKERFILE_NAME%
