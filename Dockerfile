#docker build -t watermark:1.0 .
FROM busybox:1.36

WORKDIR /home

COPY content/style.css .
COPY content/index.html .
COPY content/my.jpg .
COPY content/apache-apisix.avif .

EXPOSE 3000

CMD ["busybox", "httpd", "-f", "-v", "-p", "3000"]
