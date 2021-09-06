FROM centos:latest
ENV container docker
MAINTAINER "Rajesh Rao supra91@gmail.com"

RUN yum -y update; 
RUN yum -y install systemd; 
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in ; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done);
RUN rm -rf /lib/systemd/system/multi-user.target.wants/;
RUN rm -rf /etc/systemd/system/.wants/;
RUN rm -rf /lib/systemd/system/local-fs.target.wants/;
RUN rm -rf /lib/systemd/system/sockets.target.wants/udev;
RUN rm -rf /lib/systemd/system/sockets.target.wants/initctl;
RUN rm -rf /lib/systemd/system/basic.target.wants/;
RUN rm -rf /lib/systemd/system/anaconda.target.wants/*;

RUN dnf install -y vim

RUN yum install -y java-11-openjdk-devel

RUN java -version


RUN groupadd -r tomcat -g 433 && \
    useradd -m -u 431 -r -g  tomcat -s /sbin/nologin -c "Apache Tomcat user" tomcat


RUN groupadd -r supra91 -g 434 && \
    useradd -m -u 432 -r -g  supra91 -s /bin/bash -c "Regular user" supra91

RUN mkdir /opt/tomcat

RUN dnf install -y wget

WORKDIR /opt/tomcat

RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.52/bin/apache-tomcat-9.0.52.tar.gz

RUN tar -xvf apache-tomcat-9.0.52.tar.gz

RUN chown -R tomcat:tomcat /opt/tomcat

COPY server.xml /opt/tomcat/apache-tomcat-9.0.52/conf/

COPY tomcat-users.xml /opt/tomcat/apache-tomcat-9.0.52/conf/

COPY tomcat.service /etc/systemd/system/

WORKDIR /etc/init.d

#COPY tomcat /etc/init.d

#RUN ln -s /etc/init.d/tomcat /etc/rc2.d/S99tomcat
USER supra91

WORKDIR /home/supra91/

RUN mkdir /home/supra91/src

RUN ls -ltr /home/supra91

RUN mkdir /home/supra91/dist

RUN ls -ltr /home/supra91/

RUN mkdir /home/supra91/WEB-INF 

RUN ls -ltr /home/supra91/

RUN mkdir /home/supra91/WEB-INF/classes

RUN ls -ltr /home/supra91/WEB-INF/

RUN mkdir /home/supra91/WEB-INF/lib

RUN ls -ltr /home/supra91/WEB-INF/

COPY web.xml /home/supra91/WEB-INF/

RUN ls -ltr /home/supra91/WEB-INF/

COPY javax.servlet-api-4.0.1.jar /home/supra91/

RUN ls -ltr /home/supra91/WEB-INF/lib

COPY mysql-connector-java-8.0.11.jar /home/supra91/

RUN ls -ltr /home/supra91/WEB-INF/lib

#WORKDIR /opt/tomcat/apache-tomcat-9.0.52/webapps/manager/META-INF/

#COPY context.xml /opt/tomcat/apache-tomcat-9.0.52/webapps/manager/META-INF/context.xml

#WORKDIR /opt/tomcat/apache-tomcat-9.0.52/webapps/host-manager/META-INF/

#COPY context.xml /opt/tomcat/apache-tomcat-9.0.52/webapps/host-manager/META-INF/context.xml

WORKDIR /home/supra91/

COPY insertIntoMySQL.java /home/supra91/src/

RUN ls -ltr /home/supra91/src

COPY datafromweb.html /home/supra91

COPY datafromweb.jsp /home/supra91

USER root

RUN dnf install -y ant

USER supra91

WORKDIR /home/supra91/

RUN pwd

COPY build.xml /home/supra91

RUN mkdir /home/supra91/images

COPY tomcat.gif /home/supra91/images

RUN ls -ltr

RUN ant -v -d

USER root

WORKDIR /home/supra91

CMD ["/usr/sbin/init"]
