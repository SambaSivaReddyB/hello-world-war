Hello World! (WAR-style)
===============

This is the simplest possible Java webapp for testing servlet container deployments.  It should work on any container and requires no other dependencies or configuration.


Deploy war file to docker container
===================================

1. Launch an EC2 instance for Docker host

2. Install docker on EC2 instance and start services 
  ```sh 
  yum install docker
  service docker start
  ```

3. create a new user for Docker management and add him to Docker (default) group
```sh
useradd dockeradmin
passwd dockeradmin
usermod -aG docker dockeradmin
```

4. Write a Docker file under /opt/docker

```sh
mkdir /opt/docker

### vi Dockerfile
# Pull base image 
From tomcat:8-jre8 

# Maintainer
MAINTAINER "sambampit@gmail.com" 

# copy war file on to container 
COPY ./hello-world-war-2.0.0 /usr/local/tomcat/webapps
```

5. Login to Jenkins console and add Docker server to execute commands from Jenkins  
Manage Jenkins --> Configure system -->  Publish over SSH --> add Docker server and credentials

6. Create Jenkins job 

A) Source Code Management  
 Repository : https://github.com/SambaSivaReddyB/hello-world-war.git/ 
 Branches to build : */master  

B) Build
 Root POM: pom.xml  
 Goals and options : clean install package  
 
C) send files or execute commands over SSH
 Name: docker_host  
 Source files	: target/*.war  
 Remove prefix	: target  
 Remote directory	: //opt//docker  
 Exec command	: docker stop testdemo; docker rm -f testdemo; docker image rm -f testdemo; cd /opt/docker; docker build -t testdemo .  

D) send files or execute commands over SSH  
  Name: docker_host  
  Exec command	: docker run -d --name testdemo -p 8090:8080 testdemo  

7. Login to Docker host and check images and containers. (no images and containers)

8. Execute Jenkins job

9. check images and containers again on Docker host. This time an image and container get creates through Jenkins job

10. Access web application from browser which is running on container
<docker_host_Public_IP>:8090/hello-world-war-2.0.0
