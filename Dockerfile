FROM httpd
WORKDIR /usr/local/apache2/htdocs/
COPY ./new-repo/* /usr/local/apache2/htdocs/
EXPOSE 8080
