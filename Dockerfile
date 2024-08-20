# Use the official OpenJDK 8 base image
FROM openjdk:8

# Copy the JAR file to the container
COPY target/*.jar /app/myapp.jar

# Set the working directory
WORKDIR /app

# Expose the port the app runs on (optional, adjust if necessary)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "myapp.jar"]

# Add health check to ensure the container is running properly
HEALTHCHECK --interval=30s --timeout=10s --start-period=30s \
  CMD curl --fail http://localhost:8080/actuator/health || exit 1
