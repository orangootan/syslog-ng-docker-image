FROM ring0club/python:2.7.15-r2
RUN apk add syslog-ng=3.18.1-r1 \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
#VOLUME /etc/syslog-ng
ENTRYPOINT ["syslog-ng", "--foreground"]
