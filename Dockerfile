FROM alpine:3.9
RUN apk upgrade --no-cache
RUN apk add syslog-ng=3.19.1-r0 \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
#VOLUME /etc/syslog-ng
ENTRYPOINT ["syslog-ng", "--foreground"]
