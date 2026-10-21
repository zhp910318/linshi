FROM alpine:3.21
RUN apk add --no-cache ca-certificates
COPY --from=ghcr.io/xtls/xray-core:latest /usr/local/bin/xray /usr/local/bin/xray
COPY config.json.tmpl /app/config.json.tmpl
COPY entrypoint.sh /app/entrypoint.sh
ENTRYPOINT ["sh", "/app/entrypoint.sh"]
