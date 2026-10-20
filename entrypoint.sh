#!/bin/sh
sed "s/__PORT__/${PORT:-8080}/g; s/__UUID__/${UUID}/g" /app/config.json.tmpl > /tmp/config.json
exec xray run -c /tmp/config.json
