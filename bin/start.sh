#!/bin/bash
set -e
docker run \
    -dp 8888:8888 \
    -v "$(pwd):/app" \
    miniconda-datascience