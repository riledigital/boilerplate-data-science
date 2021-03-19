#!/bin/bash

set -e

docker build -t miniconda-datascience .
# docker run -dp 3005:3005 \
#     -w /app -v"$(pwd):/app" \