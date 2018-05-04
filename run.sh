#!/bin/bash

### maps $HOME/github to /home/github in the container
docker run \
-u root \
--name jenkins \
--rm  -d  -p 9090:8080  -p 50000:50000  \
-v jenkins-data:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock \
-v "$HOME"/github:/home/github \
jenkinsci/blueocean
