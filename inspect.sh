#!/bin/bash


# just run bash with the jenkins volumes attached
docker run -it \
-u root \
--name jenkins-admin \
-v jenkins-data:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock \
jenkinsci/blueocean bash 

## or you could just do `docker exec -it jenkins bash` given the container was starting with name 'jenkins'

