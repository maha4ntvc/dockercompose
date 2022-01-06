FROM tomcat:8.5.37-jre8
MAINTAINER maha@gmail.com
RUN apt-get update
ADD  https://maha52iaccc.s3.us-east-2.amazonaws.com/mahaLogin.war /usr/local/tomcat/webapps/
WORKDIR /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
