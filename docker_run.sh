#!/usr/bin/bash

cd docker
docker build -t python_dev:1 .
cd ..
docker run --name python_dev -itd -v $(pwd)/src:/root/python/src python_dev:1 /bin/bash
docker exec -it python_dev /bin/bash
