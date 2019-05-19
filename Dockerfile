FROM maven:3.5-jdk-8 AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml -Djar.finalName=app clean package

FROM gcr.io/distroless/java
COPY --from=build /home/app/target/app.jar /usr/local/lib/app.jar

ENTRYPOINT ["java", "-jar", "/usr/local/lib/app.jar"]
CMD ["Default0"]