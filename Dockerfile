# Base image for Java 8
FROM openjdk:16-jdk-alpine3.13

# Create a working directory
WORKDIR /

# Copy the compiled JAR file to the working directory
COPY target/chatroomapp-0.0.1-SNAPSHOT.jar /chatroomapp.jar

# Expose the application port
EXPOSE 9090

# Entrypoint to start the application
ENTRYPOINT ["java", "chatroomapp-0.0.1-SNAPSHOT-jar", "/chatroomapp.jar"]
