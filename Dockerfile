FROM jboss/keycloak:latest
COPY docker-entrypoint.sh /opt/jboss/tools
ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
COPY ./keycloak/themes/* /opt/jboss/keycloak/themes/
CMD ["-b", "0.0.0.0"]
