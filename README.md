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
  jenkinsci/blueocean
```

Admin password: run `./inspect.sh` and in the interactive shell, `cat /var/jenkins_home/secrets/initialAdminPassword`

Resources
- [book](https://jenkins.io/doc/book/getting-started/)

