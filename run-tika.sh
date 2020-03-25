#!/usr/bin/env bash
set -xe
readonly CTAKES_HOME=/srv/apache-ctakes-3.2.2

GENERATED_CLASSPATH=""
for f in $(ls ${CTAKES_HOME}/lib/*.jar); do
    if [[ $f != *"cxf"* ]]; then
        GENERATED_CLASSPATH+=$f
        GENERATED_CLASSPATH+=":"
    fi
done


java -server -Xmx22g -XX:+TieredCompilation -classpath /srv/ctakes-config:${CTAKES_HOME}/lib/opennlp-tools-1.5.3.jar:/srv/tika-server-1.24.jar:${CTAKES_HOME}/desc:${CTAKES_HOME}/resources:${GENERATED_CLASSPATH} org.apache.tika.server.TikaServerCli -h 0.0.0.0 --config /srv/ctakes-config/tika-config.xml $@
