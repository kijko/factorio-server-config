#!/bin/sh -x

set -e

id

exec /opt/factorio/bin/x64/factorio \
  --start-server-load-latest \
  --server-settings /opt/factorio/data/server-settings.json
