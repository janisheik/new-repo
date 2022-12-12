FROM httpd:1
WORKDIR /usr/local/apache2/htdocs/
COPY ./new-repo/*/usr/local/apache2/htdocs/
EXPOSE 80
