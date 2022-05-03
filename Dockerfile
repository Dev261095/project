FROM tomcat:8
LABEL app=my-app
WORKDIR /usr/local/tomcat/webapps/myweb.war
COPY . /usr/local/tomcat/webapps/myweb.war
