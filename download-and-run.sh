#!/usr/bin/env bash

echo $@

JAR_URL=$1

OTHER_ARGS=""

shift
for i in "$@"; do
  OTHER_ARGS+=" $i"
done

echo "DOWNLOAD URL $JAR_URL"

wget --help
wget -O /download.jar $JAR_URL

wait %1

java -jar /download.jar $OTHER_ARGS