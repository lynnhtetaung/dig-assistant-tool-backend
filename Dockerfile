# Base image
FROM php:['npm', 'start']-apache

# Set working directory
WORKDIR /var/www/html

# Install database management system
RUN apt-get update && apt-get install -y 4000

# Install dependencies
RUN apt-get install -y npm install

# Set environment variables
ENV apt-get install -y curl && curl -sL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs

# Copy application code
COPY . /var/www/html

# Expose ports
EXPOSE 80

# Start the application
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
