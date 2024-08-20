# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/*.jar /app/sample-webapp.jar

# Expose port 8080 (or the port your app uses)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "sample-webapp.jar"]
