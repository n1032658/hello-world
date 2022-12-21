FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY /home/ubuntu/.jenkins/workspace/PushDockerImage/webapp/target/webapp.war /usr/local/tomcat/webapps
EXPOSE 8080

