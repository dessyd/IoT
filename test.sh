#!/bin/bash
# Create secrets by reading 1Password
BASE=".env.influxdb2-admin-"
FILES="username password token"

for f in $FILES
do
  echo $BASE$f
  op read --out-file $BASE$f "op://Development/InfluxDB/Admin Credentials/$f"
done
