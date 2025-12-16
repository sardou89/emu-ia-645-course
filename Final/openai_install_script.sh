#!/bin/bash -x

docker build -t openai-app .
docker run -d \
  -p 8001:8001 \
  -e OPENAI_API_KEY=$OPENAI_API_KEY \
  openai-app



