#!/bin/sh
if [ ! -f UUID ]; then
  UUID="7a515892-f3a8-4e5a-9bc7-25a263ac1cab"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

