# Use the OpenJDK JRE image
FROM openjdk:11-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the Java file into the container
COPY helloworld.java .

# Compile the Java file
RUN javac helloworld.java

# Set the entry point to run the compiled Java program
CMD ["java", "helloworld"]
