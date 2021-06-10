#!/bin/bash

if [ -n "$1" ]; then
    mkdir -p /opt/licenses
    echo -e $1 >> /opt/licenses/android-sdk-license
    echo -e "\n--> Licenses accepted"
fi

echo -e "\n--> Running 'sh gradlew $2'\n"

sh gradlew $2
