#!/bin/bash -l
set -eu

chmod +x ./gradlew

if [ -n "$ANDROID_LICENCE" ]; then
    mkdir -p $ANDROID_HOME/licenses
    echo -e $ANDROID_LICENCE >> $ANDROID_HOME/licenses/android-sdk-license
    echo "Licences accepted"
fi

sh -c "./gradlew $*"