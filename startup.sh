#!/bin/bash

if [ -z "$DESTINATION_HTTP_PORT" ]; then
  echo "Error: DESTINATION_HTTP_PORT is not set."
  exit 1
fi

if [ -z "$DESTINATION_HTTPS_PORT" ]; then
  echo "Error: DESTINATION_HTTPS_PORT is not set."
  exit 1
fi

envsubst '${DESTINATION_HTTP_PORT} ${HTTPS_DOMAIN}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

exec "$@"
