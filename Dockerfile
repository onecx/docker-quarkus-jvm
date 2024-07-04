FROM registry.access.redhat.com/ubi9/openjdk-21:1.20-2.1719294783

ENV LANGUAGE='en_US:en'
ENV JAVA_OPTS="-Dquarkus.http.host=0.0.0.0 -Djava.util.logging.manager=org.jboss.logmanager.LogManager"
ENV JAVA_APP_JAR="/deployments/quarkus-run.jar"

USER 185
EXPOSE 8080