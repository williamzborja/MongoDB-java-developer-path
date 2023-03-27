FROM registry.access.redhat.com/ubi8/openjdk-17:1.14 AS builder

COPY --chown=jboss:jboss java-dev-path /usr/app
WORKDIR /usr/app
RUN ./gradlew build

FROM registry.access.redhat.com/ubi8/openjdk-17:1.14
COPY --from=builder /usr/app/build/libs/java-dev-path-0.0.1-SNAPSHOT.jar .
EXPOSE 8080

CMD ["java","-jar","java-dev-path-0.0.1-SNAPSHOT.jar"]
