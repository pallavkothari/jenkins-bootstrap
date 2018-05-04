# Jenkins Pipeline w/ Blue Ocean

Installing 
```bash
docker run \
  -u root \
  --rm \  
  -d \ 
  -p 8000:8080 \ 
  -p 50000:50000 \ 
  -v jenkins-data:/var/jenkins_home \ 
  -v /var/run/docker.sock:/var/run/docker.sock \ 
  -v "$HOME"/github:/home/github ## makes $HOME/github available to the container \
  jenkinsci/blueocean
```

Accessing the jenkins container: `docker exec -it jenkins bash`
Admin password: run `./inspect.sh` and in the interactive shell, `cat /var/jenkins_home/secrets/initialAdminPassword`

After that setup recommended plugins, setup admin/admin, and proceed. 


Resources
- [book](https://jenkins.io/doc/book/getting-started/)

