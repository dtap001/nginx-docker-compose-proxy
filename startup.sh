#!/bin/bash

if [ -z "$DESTINATION_HTTP_PORT" ]; then
  echo "Error: DESTINATION_HTTP_PORT is not set."
  exit 1
fi

envsubst '$DESTINATION_HTTP_PORT' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
exec "$@"
