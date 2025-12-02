FROM registry.access.redhat.com/ubi9/openjdk-21:1.23-6.1764155294

ENV LANGUAGE='en_US:en'
ENV JAVA_OPTS="-Dquarkus.http.host=0.0.0.0 -Djava.util.logging.manager=org.jboss.logmanager.LogManager"
ENV JAVA_APP_JAR="/deployments/quarkus-run.jar"

ENTRYPOINT [ "/opt/jboss/container/java/run/run-java.sh" ]

USER 185
EXPOSE 8080