#!/bin/bash
filebeat -e -c /workspace/filebeat.yml  &
java -jar /usr/share/api/app.jar -Djava.net.preferIPv4Stack=true
