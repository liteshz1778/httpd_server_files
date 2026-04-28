# Using Apache image
FROM httpd

# Remove default Apache index.html file
RUN rm -rf /usr/local/apache2/htdocs/*

# Copy your website files into Apache root
COPY . /usr/local/apache2/htdocs/

# setting up PWD & Execute Permissions for script.sh file
WORKDIR /usr/local/apache2/htdocs/
RUN chmod 755 script.sh

# Expose port 80
EXPOSE 80

# Run script + start Apache
CMD ["/bin/bash", "-c", "./script.sh && httpd-foreground"]
