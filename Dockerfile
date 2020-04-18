FROM jboss/keycloak:latest

COPY docker-entrypoint.sh /opt/jboss/tools
COPY theme/sunrise /opt/jboss/keycloak/themes/sunrise
COPY theme/address /opt/jboss/keycloak/themes/address
COPY theme/logo-example /opt/jboss/keycloak/themes/logo-example
ADD ./.profile.d /app/.profile.d

ENTRYPOINT [ "sh" , "/opt/jboss/tools/docker-entrypoint.sh" ]

CMD ["-b", "0.0.0.0"]
