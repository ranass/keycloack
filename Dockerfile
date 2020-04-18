FROM jboss/keycloak:latest

COPY docker-entrypoint.sh /opt/jboss/tools
COPY theme/* /opt/jboss/keycloak/themes/ttheme/

ENTRYPOINT [ "sh" , "/opt/jboss/tools/docker-entrypoint.sh" ]

CMD ["-b", "0.0.0.0"]
