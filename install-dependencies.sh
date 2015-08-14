#!/bin/bash

export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH"

DEPS="$ANDROID_HOME/installed-dependencies"

if [ ! -e $DEPS ]; then
    cp -r /usr/local/android-sdk-linux $ANRDROID_HOME &&
    echo y | android update sdk --no-ui --all --filter "android-21, build-tools-21.1.2"
    #echo y | android update sdk --no-ui --all --filter "sys-img-x86-android-21"
    echo y | android update sdk --no-ui --all --filter "sys-img-armeabi-v7a-android-21"
    #echo y | android update sdk --no-ui --all --filter "extra-android-m2repository"
    #echo y | android update sdk --no-ui --all --filter "extra-google-m2repository"
    #echo y | android update sdk --no-ui --all --filter "extra-android-support"
    #echo y | android update sdk --no-ui --all --filter
    #"extra-google-google_play_services"
    touch $DEPS
fi

