#!/bin/sh -e
CFG=/usr/share/nginx/html/js/config.js
sed -i "s|http://kazoo.kazoo:8000/v2/|$KAZOO_URL|" $CFG
exec /usr/sbin/nginx -g "daemon off;"
