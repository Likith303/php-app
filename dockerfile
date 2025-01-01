FROM php:8.0-apache

# Install necessary PHP extensions (if required)
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libfreetype6-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd pdo pdo_mysql

# Enable Apache mod_rewrite (if needed for your application)
RUN a2enmod rewrite

# Copy the application code into the container
COPY . /var/www/html/

# Expose port 8080
EXPOSE 8080

# Change Apache to listen on port 8080
RUN echo "Listen 8080" >> /etc/apache2/ports.conf

# Start Apache server on port 8080
CMD ["apache2-foreground"]