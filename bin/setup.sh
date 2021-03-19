#!/bin/bash

set -e
echo "Building image... this will take a while, as the image is > 3 GB!"
docker build -t miniconda-datascience .
# docker run -dp 3005:3005 \
#     -w /app -v"$(pwd):/app" \