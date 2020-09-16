#!/bin/sh
set -e

cd /crawler

cp config/config.json config.json

/usr/local/bin/node setup
/usr/local/bin/node index
