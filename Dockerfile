FROM httpd:2.4

USER root

COPY index.html /var/www/html/
RUN chown -R apache:apache /var/www/html

EXPOSE 8080
EXPOSE 8443

USER 1001

CMD ["/usr/bin/run-httpd"]
