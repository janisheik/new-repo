FROM httpd:2.4
WORKDIR ./usr/local/apache2/htdocs/
ENV PATH=/usr/local/apache2/htdocs:$PATH
COPY ./build/*/usr/local/apache2/htdocs/
EXPOSE 80
CMD ["httpd"]
