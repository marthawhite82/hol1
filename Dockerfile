# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "marthawhite82@yahoo.com" 
COPY /webapp/target/holliday.war /usr/local/tomcat/webapps
