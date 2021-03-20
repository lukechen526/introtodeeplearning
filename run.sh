#!/bin/bash
docker build -t introdeeplearning:21.02-tf2-py3 .
docker run -p 8888:8888 -v ${PWD}:/workspace --gpus all -it --rm --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 introdeeplearning:21.02-tf2-py3
