FROM alpine:latest

MAINTAINER Miljenko Norsic <miljenko.norsic@gmail.com>

RUN apk add --update curl && rm -rf /var/cache/apk/* && apk --update add openjdk8-jre

# install liferay
RUN curl -O -s -k -L -C - https://sourceforge.net/projects/lportal/files/Liferay%20Portal/7.0.2%20GA3/liferay-ce-portal-tomcat-7.0-ga3-20160804222206210.zip \
&& mkdir /opt \
&& unzip liferay-ce-portal-tomcat-7.0-ga3-20160804222206210.zip -d /opt \
&& rm liferay-ce-portal-tomcat-7.0-ga3-20160804222206210.zip

# Ports
EXPOSE 8080

# Set JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/default-jvm

ENV PATH ${PATH}:${JAVA_HOME}/bin

CMD ["run"]
ENTRYPOINT ["/opt/liferay-ce-portal-7.0-ga3/tomcat-8.0.32/bin/catalina.sh"]
