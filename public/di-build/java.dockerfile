# Base Java image
FROM openjdk:11

# Set working directory
WORKDIR /app

# Copy the application source code
COPY . .

# Build the Java application
RUN javac Main.java

# Default command to run the Java application
CMD . .
