#!/bin/bash

USERNAME="3mdeb"
IMAGE="rf-docker"

docker build -t $USERNAME/$IMAGE:latest .
