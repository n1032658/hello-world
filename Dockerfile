FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
ADD ./target/webapp.war /usr/local/tomcat/webapps
EXPOSE 8080

