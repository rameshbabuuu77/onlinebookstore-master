FROM httpd:2.4
COPY target/onlinebookstore.war /usr/local/apache2/htdocs/
