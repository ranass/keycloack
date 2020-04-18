FROM jboss/keycloak:latest

COPY docker-entrypoint.sh /opt/jboss/tools
COPY theme/* themes

ENTRYPOINT [ "sh" , "/opt/jboss/tools/docker-entrypoint.sh" ]

CMD ["-b", "0.0.0.0"]
