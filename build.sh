#!/bin/sh

set -xe

# Path to Android SDK
export ANDROID_HOME=$HOME/android/sdk

gradle wrapper
./gradlew build
