FROM maven:3.9-amazoncorretto-17 as byggmesterbob
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn package

FROM amazoncorretto:17.0.9-alpine3.18
COPY --from=byggmesterbob /app/target/*.jar /app/application.jar
CMD ["java","-jar","/app/application.jar"]