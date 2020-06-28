#!/usr/bin/bash

python_dev_path=`pwd`
cd docker
docker build -t python_dev:1 .
docker run --name python_dev -itd -v $python_dev_path/src:/root/python/src python_dev:1 /bin/bash
