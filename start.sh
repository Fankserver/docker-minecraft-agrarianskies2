#!/bin/sh
if [ ! "$(ls -A /server/world)" ]
then
    echo "copy world"
    cp -r /server/world_org/* /server/world
fi

java -Xms512m -Xmx2048m -XX:PermSize=128m -Dfml.queryResult=confirm -jar forge-*-universal.jar
