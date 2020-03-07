FROM jboss/keycloak:latest

COPY docker-entrypoint.sh /opt/jboss/tools

RUN ["chmod", "+x", "/opt/jboss/tools/docker-entrypoint.sh"]

ENTRYPOINT [ "sh" , "/opt/jboss/tools/docker-entrypoint.sh" ]

CMD ["-b", "0.0.0.0"]