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

# LAMS checkout and select the correct version
RUN git clone https://github.com/lamsfoundation/lams.git lams \
    && cd lams \
    && git checkout 55371b31334b7eea982cc20ca44d64632826fa06

ADD ./config/common.properties lams/lams_build/common.properties
ADD ./config/unix.properties lams/lams_build/unix.properties

ENV DBHOST=83.212.78.59 \
    DBNAME=lams_docker_setup_db \
    DBUSERNAME=lams_docker_setup_user \
    DBPASSWORD=ZDXUGWsf5A

RUN cd lams/lams_build/ \
    #&& sed -i '/target="build-db"/d' ./build.xml \
    #&& sed -i '/<property file="build.properties"\/>/i <property environment="env" \/>' ./build.xml \
    && ant deploy-lams

# Replace the hardcoded database data
RUN find /usr/local/wildfly-14.0.1/standalone/configuration -type f -exec sed -i "s/83\.212\.78\.59/$\{env\.DBHOST\}/g" {} \; \
    && find /usr/local/wildfly-14.0.1/standalone/configuration -type f -exec sed -i "s/lams_docker_setup_db/$\{env\.DBNAME\}/g" {} \; \
    && find /usr/local/wildfly-14.0.1/standalone/configuration -type f -exec sed -i "s/lams_docker_setup_user/$\{env\.DBUSERNAME\}/g" {} \; \
    && find /usr/local/wildfly-14.0.1/standalone/configuration -type f -exec sed -i "s/ZDXUGWsf5A/$\{env\.DBPASSWORD\}/g" {} \;

CMD [ "/usr/local/wildfly-14.0.1/bin/standalone.sh", "-bmanagement", "0.0.0.0", "-Djboss.bind.address=0.0.0.0" ]