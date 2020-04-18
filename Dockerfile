FROM jboss/keycloak:latest

COPY docker-entrypoint.sh /opt/jboss/tools
COPY theme/* /opt/jboss/keycloak/themes/ttheme/
ADD ./.profile.d /app/.profile.d

ENTRYPOINT [ "bash", "/app/.profile.d/heroku-exec.sh", "&&", "sh" , "/opt/jboss/tools/docker-entrypoint.sh" ]

CMD ["-b", "0.0.0.0"]
