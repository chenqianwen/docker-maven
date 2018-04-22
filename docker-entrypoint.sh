#!/bin/sh
if [ -n "$ENV" ] ; then
PROFILES_ACTIVE=$ENV
else
PROFILES_ACTIVE="dev"
fi

java -jar /home/server.jar --spring.profiles.active=${PROFILES_ACTIVE} --server.port=8080 $JAVA_OPTS
