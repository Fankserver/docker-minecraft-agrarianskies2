#!/bin/sh
if [ ! "$(ls -A /server/world)" ]
then
    echo "copy world"
    cp -r /server/world_org/* /server/world
fi

if [ ! "$(ls -A /server/config)" ]
then
    echo "copy config"
    cp -r /server/config_org/* /server/config
fi

java -Xms512m -Xmx2048m -XX:PermSize=128m -Dfml.queryResult=confirm -jar forge-*-universal.jar
