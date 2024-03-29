FROM alpine:3.14.2
RUN apk upgrade --no-cache
RUN apk add syslog-ng=3.30.1-r3 \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
#VOLUME /etc/syslog-ng
ENTRYPOINT ["syslog-ng", "--foreground"]
