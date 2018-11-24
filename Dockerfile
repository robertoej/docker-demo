FROM java:8-jdk-alpine
EXPOSE 8080
COPY target/app.jar app.jar
CMD ["java", "-jar", "app.jar"]
