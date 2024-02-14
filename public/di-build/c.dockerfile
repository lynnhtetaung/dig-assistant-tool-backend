# Base C image
FROM gcc:latest 

# Set working directory
WORKDIR /app

# Copy the application source code
COPY . .

# Build the C application
RUN gcc -o my-application main.c

# Default command to run the C application
CMD ["./my-application"]
