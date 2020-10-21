#!/bin/bash

set -e

export ANSI_YELLOW="\e[1;33m"
export ANSI_GREEN="\e[32m"
export ANSI_RESET="\e[0m"

echo -e "\n $ANSI_YELLOW *** FUNCTIONAL TEST(S) *** $ANSI_RESET \n"

echo -e "$ANSI_YELLOW It can run a Java program: $ANSI_RESET"
docker network create somenetwork
docker run --rm -d --name elasticsearch --net somenetwork -p 9400:9400 -p 9500:9500 -e "discovery.type=single-node" quay.io/ibmz/elasticsearch:7.9.1
docker run --rm -d -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" quay.io/ibmz/elasticsearch:7.9.1
docker network rm somenetwork


echo -e "\n $ANSI_GREEN *** FUNCTIONAL TEST(S) COMPLETED SUCESSFULLY *** $ANSI_RESET \n"


