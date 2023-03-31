FROM alpine:latest

RUN apk add --no-cache dante-server

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 1080

ENTRYPOINT ["/entrypoint.sh"]
