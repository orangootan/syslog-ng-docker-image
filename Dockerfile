RUN apk add syslog-ng=3.9.1-r3 \
FROM ring0club/python:2.7.14-r2
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
#VOLUME /etc/syslog-ng
ENTRYPOINT ["syslog-ng", "--foreground"]
