FROM alpine:latest
RUN apk update
RUN apk add apache2
RUN echo "<h1>This Web Server run with IP: $myip</h1> <h2>Hello byurkovskiy ! :-)</h2>" > /var/www/localhost/htdocs/index.html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]