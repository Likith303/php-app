# Use an official PHP runtime as the base image
FROM php:8.0

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the contents of your PHP application to the container
COPY . .

# Install any PHP extensions or dependencies your application requires
# For example, if you need to install the mysqli extension:
RUN docker-php-ext-install mysqli

# Expose a port (if your application listens on a specific port)
EXPOSE 80

# Define the command to start your PHP application
CMD ["php", "-S", "0.0.0.0:80"]

