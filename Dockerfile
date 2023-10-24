FROM maven:3.9-amazoncorretto-17 as byggmesterbob
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn package

FROM openjdk:17-alpine3.14
COPY --from=byggmesterbob /app/target/*.jar /app/application.jar
CMD ["java","-jar","/app/application.jar"]