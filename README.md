## Docker Test Network

### Subject 

In Docker for MacOS it is visible some network issues regarding mainly ruby and concurrency in the virtual network. This laboratory serve the purpose of isolating the issue in the minimal problematic environment.

### Test 1

Having Docker properly installed stop your containers and run:

```
cd docker-network-test
./bin/rerun
```

This will raise the image1-container and image2-container