FROM httpd:2.4

COPY index.html /usr/local/apache2/htdocs/

USER root

EXPOSE 8080
EXPOSE 8443

USER 1001

CMD ["/usr/bin/run-httpd"]
