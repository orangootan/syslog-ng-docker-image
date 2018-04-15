FROM ring0club/python:2.7.14-r4
RUN apk add syslog-ng=3.13.2-r1 \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
#VOLUME /etc/syslog-ng
ENTRYPOINT ["syslog-ng", "--foreground"]
