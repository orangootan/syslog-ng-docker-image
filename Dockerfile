FROM ring0club/python:2.7.13-r1
RUN apk add syslog-ng=3.9.1-r1 \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/main \
    --no-cache
VOLUME /etc/syslog-ng
ENTRYPOINT ["syslog-ng", "--foreground", "--stderr"]
