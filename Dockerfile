FROM tomcat:8
LABEL app=my-app
WORKDIR /usr/local/tomcat/webapps/myweb.war
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
