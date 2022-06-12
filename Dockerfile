FROM adoptopenjdk/openjdk11:x86_64-alpine-jdk-11.0.13_8

WORKDIR /app

# System packages and dependecies
RUN apk add build-base npm apache-ant git wget curl nginx fontconfig ttf-dejavu supervisor \
    && npm install -g sass \
    # Bring in gettext so we can get `envsubst`, then throw
	# the rest away. To do this, we need to install `gettext`
	# then move `envsubst` out of the way so `gettext` can
    # be deleted completely, then move `envsubst` back.
    && apk add gettext libintl \
    && cp /usr/bin/envsubst /usr/local/bin/envsubst \
    && apk del gettext

# Mysql because LAMS requires a database to build
RUN apk add mariadb mariadb-client \
    && mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql \
    && mkdir /run/mysqld/ \
    && sed -i '/skip-networking/s/^/#/' /etc/my.cnf.d/mariadb-server.cnf

# Wildfly application server
RUN wget "http://download.jboss.org/wildfly/14.0.1.Final/wildfly-14.0.1.Final.tar.gz" \
    && tar xzf ./wildfly-14.0.1.Final.tar.gz \
    && mv wildfly-14.0.1.Final wildfly-14.0.1 \
    && mv wildfly-14.0.1 /usr/local/ \
    && rm -fR ./wildfly-14.0.1.Final.tar.gz \
    && mkdir /opt/lams-data/ \
    && ln -s /usr/local/wildfly-14.0.1 /usr/local/wildfly-14.0

# LAMS checkout and select the correct version
RUN git clone https://github.com/lamsfoundation/lams.git lams \
    && cd lams \
    && git checkout 5d93b04210ad00f6ab5408fffa277d70304c77c9

ADD  ./lams_central/conf/security/Owasp.CsrfGuard.properties /app/lams/lams_central/conf/security/Owasp.CsrfGuard.properties

ADD ./lams_admin/src/java/org/lamsfoundation/lams/admin/web/controller/LdapConfigController.java /app/lams/lams_admin/src/java/org/lamsfoundation/lams/admin/web/controller/LdapConfigController.java

ADD ./lams_build/common.properties lams/lams_build/common.properties
ADD ./lams_build/unix.properties lams/lams_build/unix.properties

ADD ./lams_common/db/sql/insert_lams_users.sql /app/lams/lams_common/db/sql/insert_lams_users.sql
ADD ./lams_common/src/java/org/lamsfoundation/lams/integration/security/SsoHandler.java /app/lams/lams_common/src/java/org/lamsfoundation/lams/integration/security/SsoHandler.java
ADD ./lams_common/src/java/org/lamsfoundation/lams/integration/security/LDAPAuthenticator.java /app/lams/lams_common/src/java/org/lamsfoundation/lams/integration/security/LDAPAuthenticator.java
ADD ./lams_common/src/java/org/lamsfoundation/lams/usermanagement/service/LdapService.java /app/lams/lams_common/src/java/org/lamsfoundation/lams/usermanagement/service/LdapService.java
ADD ./lams_common/src/java/org/lamsfoundation/lams/usermanagement/service/UserManagementService.java /app/lams/lams_common/src/java/org/lamsfoundation/lams/usermanagement/service/UserManagementService.java
ADD ./lams_common/src/java/org/lamsfoundation/lams/applicationContext.xml /app/lams/lams_common/src/java/org/lamsfoundation/lams/applicationContext.xml
ADD ./lams_common/src/java/org/lamsfoundation/lams/usermanagement/ldapContext.xml /app/lams/lams_common/src/java/org/lamsfoundation/lams/usermanagement/ldapContext.xml

ADD ./lams_central/conf/scss/_lams_variables_sch.scss /app/lams/lams_central/conf/scss/_lams_variables_sch.scss
ADD ./lams_central/conf/scss/_bootstrap-variables_sch.scss /app/lams/lams_central/conf/scss/_bootstrap-variables_sch.scss
ADD ./lams_central/conf/favicon/lams/favicon.ico /app/lams/lams_central/conf/favicon/lams/favicon.ico
ADD ./lams_central/conf/language/lams/ApplicationResources_el_GR.properties /app/lams/lams_central/conf/language/lams/ApplicationResources_el_GR.properties
ADD ./lams_central/src/java/org/lamsfoundation/lams/web/IndexController.java /app/lams/lams_central/src/java/org/lamsfoundation/lams/web/IndexController.java
ADD ./lams_central/src/java/org/lamsfoundation/lams/web/HomeController.java /app/lams/lams_central/src/java/org/lamsfoundation/lams/web/HomeController.java
ADD ./lams_central/src/java/org/lamsfoundation/lams/web/DisplayGroupController.java /app/lams/lams_central/src/java/org/lamsfoundation/lams/web/DisplayGroupController.java
ADD ./lams_central/src/java/org/lamsfoundation/lams/security/LDAPAuthenticator.java /app/lams/lams_central/src/java/org/lamsfoundation/lams/security/LDAPAuthenticator.java

ADD ./lams_tool_mindmap/src/java/org/lamsfoundation/lams/tool/mindmap/web/controller/LearningController.java /app/lams/lams_tool_mindmap/src/java/org/lamsfoundation/lams/tool/mindmap/web/controller/LearningController.java
#RUN sed -i 's/request.setAttribute("userIdParam", mindmapUser.getUid());/if (request != null \&\& mindmapUser != null) { request.setAttribute("userIdParam", mindmapUser.getUid()); }/g' /app/lams/lams_tool_mindmap/src/java/org/lamsfoundation/lams/tool/mindmap/web/controller/LearningController.java
RUN sed -i 's/name="userId" value="${userIdParam}"/name="userUid" value="${userIdParam}"/g' /app/lams/lams_tool_mindmap/web/pages/learning/mindmap.jsp
RUN sed -i 's/data-src=/data-src/g' /app/lams/lams_tool_mindmap/web/pages/monitoring/summary.jsp

ADD ./lams_admin/web /tmp/lams_admin_web
RUN cp -R /tmp/lams_admin_web/* /app/lams/lams_admin/web && rm -fR /tmp/lams_admin_web \
    && ln -s /usr/local/bin/sass /usr/bin/sass \
    && cd /app/lams/lams_admin && ant sass.compile

ADD ./lams_central/web /tmp/lams_central_web
RUN cp -R /tmp/lams_central_web/* /app/lams/lams_central/web && rm -fR /tmp/lams_central_web \
    && cd /app/lams/lams_central && ant sass.compile

ADD ./lams_monitoring/web /tmp/lams_monitoring_web
RUN cp -R /tmp/lams_monitoring_web/* /app/lams/lams_monitoring/web && rm -fR /tmp/lams_monitoring_web \
    && cd /app/lams/lams_monitoring && ant sass.compile

ADD ./lams_www/web /tmp/lams_www_web
RUN cp -R /tmp/lams_www_web/* /app/lams/lams_www/web && rm -fR /tmp/lams_www_web

ENV DBHOST=127.0.0.1 \
    DBNAME=lams_docker_setup_db \
    DBUSERNAME=lams_docker_setup_user \
    DBPASSWORD=lams_docker_setup_password \
    WEB_CONCURRENCY=8 \
    PORT=9080 \
    WORDPRESS_HOST=10.2.47.59 \
    WORDPRESS_PORT=5080 \
    NGINXENV=standalone

# Workaround for https://github.com/AdoptOpenJDK/openjdk-docker/issues/75
RUN ln -s /usr/lib/libfontconfig.so.1 /usr/lib/libfontconfig.so && \
    ln -s /lib/libuuid.so.1 /usr/lib/libuuid.so.1
ENV LD_LIBRARY_PATH /usr/lib
# End workaround

RUN cd lams/lams_build/ \
    && sh -c "mysqld --user=root --skip-grant-tables &" \
    && sleep 5 \
    && mysql -uroot -e "create database lams_docker_setup_db" \
    #&& sed -i '/target="build-db"/d' ./build.xml \
    #&& sed -i '/<property file="build.properties"\/>/i <property environment="env" \/>' ./build.xml \
    && ant deploy-lams

ADD ./docker/jwt/public.pem /docker/jwt/public.pem
ADD ./docker/conf/supervisord.conf /etc/supervisor/supervisord.conf
ADD ./docker/conf/nginx.conf /etc/nginx/nginx.conf.template
# Wordpress proxy landing page
ADD ./docker/conf/nginx_proxy.conf /etc/nginx/conf.d/default.template.proxy
# Standalone
ADD ./docker/conf/nginx_standalone.conf /etc/nginx/conf.d/default.template.standalone
ADD ./docker/conf/wildfly_standalone.conf /usr/local/wildfly-14.0.1/bin/standalone.conf

# Replace the hardcoded database data
RUN apk del --purge mariadb mariadb-client && rm -fR /var/lib/mysql && rm -fR /run/mysqld/ && rm -fR /etc/my.cnf* \
    && find /usr/local/wildfly-14.0.1/standalone/configuration -type f -exec sed -i "s/127\.0\.0\.1/$\{env\.DBHOST\}/g" {} \; \
    && find /usr/local/wildfly-14.0.1/standalone/configuration -type f -exec sed -i "s/lams_docker_setup_db/$\{env\.DBNAME\}/g" {} \; \
    && find /usr/local/wildfly-14.0.1/standalone/configuration -type f -exec sed -i "s/lams_docker_setup_user/$\{env\.DBUSERNAME\}/g" {} \; \
    && find /usr/local/wildfly-14.0.1/standalone/configuration -type f -exec sed -i "s/lams_docker_setup_password/$\{env\.DBPASSWORD\}/g" {} \;

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]