FROM jboss/keycloak:latest

MV ./keycloak/themes/ /opt/jboss/keycloak/themes/

COPY docker-entrypoint.sh /opt/jboss/tools

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]