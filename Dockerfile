FROM centos:latest

MAINTAINER Gregory

RUN yum -y install java-1.8.0-openjdk-devel
RUN yum -y install tomcat
RUN yum -y install net-tools
RUN yum -y install which less

ENV NAME tomcat
RUN mkdir /logs

CMD /usr/sbin/tomcat start && tail -f /logs/catalina.out
ADD *.war /usr/share/tomcat/webapps

