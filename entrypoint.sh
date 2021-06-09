#!/bin/bash

if [ -n "$1" ]; then
    mkdir -p $ANDROID_HOME/licenses
    echo -e $1 >> $ANDROID_HOME/licenses/android-sdk-license
    echo -e "\n--> Licences accepted\n"
fi

echo -e "\n--> Running 'sh gradlew $2'\n"

sh gradlew $2
