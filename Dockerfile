FROM maven:3.6.0-jdk-8-alpine as builder
WORKDIR /build
COPY pom.xml .
RUN mvn dependency:go-offline

COPY src/ /build/src/
RUN mvn package

FROM jetty:9-jre8-alpine
USER jetty:jetty
COPY --from=builder /build/target/philips-vitalhealth-fhir-server.war /var/lib/jetty/webapps/root.war
EXPOSE 8080