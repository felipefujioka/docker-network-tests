#!/bin/bash

while true;
  do nc -l -p 8080 < index.html; 
done