#!/bin/sh
set -e

cd /crawler

/usr/local/bin/node setup
/usr/local/bin/node index
