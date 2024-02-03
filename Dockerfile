FROM registry.access.redhat.com/ubi9/openjdk-17:1.17

LABEL org.opencontainers.image.source="https://github.com/onecx/docker-quarkus-jvm"
LABEL org.opencontainers.image.description="Docker image for Quarkus JVM application base on ubi9/openjdk-17"

ENV LANGUAGE='en_US:en'
ENV JAVA_OPTS="-Dquarkus.http.host=0.0.0.0 -Djava.util.logging.manager=org.jboss.logmanager.LogManager"
ENV JAVA_APP_JAR="/deployments/quarkus-run.jar"

EXPOSE 8080