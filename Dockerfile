FROM ring0club/python:2.7.14-r2
RUN apk add syslog-ng=3.13.2-r0 \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
#VOLUME /etc/syslog-ng
ENTRYPOINT ["syslog-ng", "--foreground"]
