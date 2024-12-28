# Use the official Eclipse Temurin JDK 17 image from the Docker Hub
FROM eclipse-temurin:17-jdk-alpine

# Expose the port on which the Spring Boot app will run inside the container
EXPOSE 8083

# Set the working directory inside the container
ENV APP_HOME /usr/src/app

# Copy the JAR file (from the target directory after the Spring Boot build) into the container
COPY target/*.jar $APP_HOME/app.jar

# Set the working directory
WORKDIR $APP_HOME

# Command to run the application
CMD ["java", "-jar", "app.jar"]

