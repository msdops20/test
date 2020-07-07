FROM tomcat:8
RUN curl -u admin:admin123  http://54.185.108.131:8082/artifactory/GOL/gameoflife.war
RUN cp gameoflife.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD [ "catalina.sh","run"]
