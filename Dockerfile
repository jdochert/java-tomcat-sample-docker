FROM tomcat:latest
ADD **/*.war /usr/local/tomcat/webapps/
EXPOSE 8085
CMD ["catalina.sh", "run"]
