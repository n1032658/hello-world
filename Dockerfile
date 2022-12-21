FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
ARG WAR_FILE= webapp.war
RUN pwd
RUN whoami
RUN ls
ADD ${WAR_FILE} /usr/local/tomcat/webapps

