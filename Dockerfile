FROM registry.access.redhat.com/ubi9/openjdk-21:1.21-3.1738663154

ENV LANGUAGE='en_US:en'
ENV JAVA_OPTS="-Dquarkus.http.host=0.0.0.0 -Djava.util.logging.manager=org.jboss.logmanager.LogManager"
ENV JAVA_APP_JAR="/deployments/quarkus-run.jar"

ENTRYPOINT [ "/opt/jboss/container/java/run/run-java.sh" ]

USER 185
EXPOSE 8080