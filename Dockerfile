RUN apk add syslog-ng=3.9.1-r3 \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/main \
FROM ring0club/python:2.7.14-r2
    --no-cache
#VOLUME /etc/syslog-ng
ENTRYPOINT ["syslog-ng", "--foreground"]
