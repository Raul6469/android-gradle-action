#!/bin/bash -l
set -eu

chmod +x ./gradlew

if [ -n "$1" ]; then
    mkdir -p $ANDROID_HOME/licenses
    echo -e $1 >> $ANDROID_HOME/licenses/android-sdk-license
    echo $"\nLicences accepted"
fi

echo $"\n--> Running './gradlew $2'\n"

sh -c "./gradlew $2"
