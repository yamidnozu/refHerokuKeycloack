FROM jboss/keycloak:latest

COPY keycloak/themes/ /opt/jboss/keycloak/themes/
COPY files/ /files/
RUN ls -la /keycloak/themes/*

COPY docker-entrypoint.sh /opt/jboss/tools

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]