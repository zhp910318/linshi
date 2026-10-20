FROM ghcr.io/xtls/xray-core:latest
COPY config.json.tmpl /app/config.json.tmpl
COPY entrypoint.sh /app/entrypoint.sh
ENTRYPOINT ["sh", "/app/entrypoint.sh"]
