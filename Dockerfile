FROM wordpress:latest

# Defined an ARG for the WordPress version
ARG WORDPRESS_VERSION=latest

# Install additional PHP extensions and configure Apache
RUN apt-get update


# Set the working directory to WordPress root
WORKDIR /var/www/html

# Copy WordPress files with ARG-defined version
COPY --chown=www-data:www-data . /var/www/html/

# Expose port 80 for Apache
EXPOSE 80

# Start Apache and WordPress
CMD ["apache2-foreground"]
 
