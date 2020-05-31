FROM alpine:latest

#RUN wget https://download.java.net/java/early_access/alpine/5/binaries/openjdk-13-ea+5_linux-x64-musl_bin.tar.gz
#RUN tar -xzvf *.tar.gz
#ENV JAVA_VERSION="jdk-13"
#RUN chmod +x $JAVA_VERSION
#RUN mv $JAVA_VERSION /usr/local/share
#ENV JAVA_HOME=/usr/local/share/$JAVA_VERSION
#ENV PATH="$JAVA_HOME/bin:${PATH}"
#RUN rm -rf *.tar.gz

COPY . .
COPY ./keycloack/ /opt/jboss/keycloak/

COPY docker-entrypoint.sh /opt/jboss/tools

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]