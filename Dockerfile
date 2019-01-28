# Pull the base image
From tomcat:8-jre8

# Maintainer
MAINTAINER "sambampit@gmail.com"

# copy war file on to container
COPY ./hello-world-war-2.0.0.war /usr/local/tomcat/webapps
