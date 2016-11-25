#!/bin/bash

CONTAINER=$1

while true; do
  echo "[$(date)] $(docker stats --no-stream $1 | tail -1 | awk '{print $3" "$4}')"
  echo "[$(date)] $(docker exec -t $1 cat /proc/1/status | grep VmRSS)"
done
