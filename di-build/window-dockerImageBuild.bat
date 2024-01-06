@echo off
setlocal enabledelayedexpansion

set "DOCKERFILE_NAME=angular"  REM Specify the default Dockerfile name

REM Check if a Dockerfile name was provided as an argument
if "%~1" neq "" (
    set "DOCKERFILE_NAME=%~1"  REM Use the provided Dockerfile name as input
)

REM Building the Docker image and tagging it
docker build -f "di-build\%DOCKERFILE_NAME%.dockerfile" -t 24091997/dig:%DOCKERFILE_NAME% --network=host --no-cache

REM Logging into Docker Hub
docker login --username 24091997 --password-stdin < myPassword.txt

REM Pushing the built image to the Docker repository
docker image push 24091997/dig:%DOCKERFILE_NAME%
