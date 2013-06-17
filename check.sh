#!/bin/bash
cd `dirname $0`
upstream_version=`curl -s http://www.oracle.com/technetwork/java/javase/downloads/index.html | grep -o 'Java SE 6u[0-9]*' | awk -Fu '{print $2}'`
local_version=`ls jdk-*|sort -nr | head -1 | awk -F'u|-' '{print $3}'`
if [ $upstream_version -gt $local_version ]; then
	echo "New Oracle JDK version 6u$upstream_version > 6u$local_version"
fi
