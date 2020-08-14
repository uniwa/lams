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

ADD ./lams_build/common.properties lams/lams_build/common.properties
ADD ./lams_build/unix.properties lams/lams_build/unix.properties

ADD ./lams_common/db/sql/insert_lams_users.sql /app/lams/lams_common/db/sql/insert_lams_users.sql

ADD ./lams_central/conf/scss/_lams_variables_sch.scss /app/lams/lams_central/conf/scss/_lams_variables_sch.scss
ADD ./lams_central/conf/scss/_bootstrap-variables_sch.scss /app/lams/lams_central/conf/scss/_bootstrap-variables_sch.scss
ADD ./lams_central/conf/favicon/lams/favicon.ico /app/lams/lams_central/conf/favicon/lams/favicon.ico

ADD ./lams_central/web /tmp/lams_central_web
RUN cp -R /tmp/lams_central_web/* /app/lams/lams_central/web && rm -fR /tmp/lams_central_web \
    && cd /app/lams/lams_central && ant sass.compile

ADD ./lams_monitoring/web /tmp/lams_monitoring_web
RUN cp -R /tmp/lams_monitoring_web/* /app/lams/lams_monitoring/web && rm -fR /tmp/lams_monitoring_web \
    && cd /app/lams/lams_monitoring && ant sass.compile

ADD ./lams_www/web /tmp/lams_www_web
RUN cp -R /tmp/lams_www_web/* /app/lams/lams_www/web && rm -fR /tmp/lams_www_web

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