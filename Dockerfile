# Use a base image with Java 8
FROM openjdk:8-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled Java application JAR file into the container
COPY target/simple-java-app-1.0-SNAPSHOT.jar /app/simple-java-app.jar

# Expose port 8000 for the application
EXPOSE 8000

# Command to run the Java application when the container starts
CMD ["java", "-jar", "simple-java-app.jar"]
