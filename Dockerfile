FROM jboss/keycloak:latest

COPY ./keycloack/ /opt/jboss/keycloak/

COPY docker-entrypoint.sh /opt/jboss/tools

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]