FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
RUN pwd
RUN whoami
RUN ls
COPY /opt/docker/webapp.war /usr/local/tomcat/webapps
EXPOSE 8080

