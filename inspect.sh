#!/bin/bash

# just run bash with the jenkins volumes attached
docker run -it \
-u root \
--name jenkins-admin \
-v jenkins-data:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock \
jenkinsci/blueocean bash 

