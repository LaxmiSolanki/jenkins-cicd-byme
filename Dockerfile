# 1. Use official Apache HTTP Server image
FROM httpd:latest

# 2. Set a working directory inside the container
WORKDIR /usr/local/apache2/htdocs/

# 3. Copy your HTML file into the Apache web root
COPY index.html /usr/local/apache2/htdocs/

# 4. Apache listens on port 80
EXPOSE 80

# 5. Start Apache in the foreground (required for Docker)
CMD ["httpd-foreground"]
