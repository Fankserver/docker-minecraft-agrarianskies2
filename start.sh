#!/bin/sh
if [ ! -d /server/world ]
then
    cp -r /server/world_org /server/world
fi

java -Xms512m -Xmx2048m -XX:PermSize=128m -Dfml.queryResult=confirm -jar forge-*-universal.jar
