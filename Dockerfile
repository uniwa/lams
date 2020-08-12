FROM adoptopenjdk/openjdk11:x86_64-alpine-jdk-11.0.8_10

WORKDIR /app

# System packages and dependecies
RUN apk add build-base ruby ruby-dev apache-ant git wget curl \
    && gem install sass

# Wildfly application server
RUN wget "http://download.jboss.org/wildfly/14.0.1.Final/wildfly-14.0.1.Final.tar.gz" \
    && tar xzf ./wildfly-14.0.1.Final.tar.gz \
    && mv wildfly-14.0.1.Final wildfly-14.0.1 \
    && mv wildfly-14.0.1 /usr/local/ \
    && rm -fR ./wildfly-14.0.1.Final.tar.gz \
    && mkdir /opt/lams-data/

# LAMS
RUN git clone https://github.com/lamsfoundation/lams.git lams

ADD ./config/common.properties lams/lams_build/common.properties
ADD ./config/unix.properties lams/lams_build/unix.properties

ENV DBHOST=83.212.78.59 \
    DBNAME=lams_docker_setup \
    DBUSERNAME=root \
    DBPASSWORD=ZDXUGWsf5A

RUN cd lams/lams_build/ \
    #&& sed -i '/target="build-db"/d' ./build.xml \
    #&& sed -i '/<property file="build.properties"\/>/i <property environment="env" \/>' ./build.xml \
    && ant deploy-lams

CMD [ "/usr/local/wildfly-14.0.1/bin/standalone.sh", "-bmanagement", "0.0.0.0", "-Djboss.bind.address=0.0.0.0" ]