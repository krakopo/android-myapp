#!/bin/bash

set -e

action=$1

# Path to Android SDK
export ANDROID_HOME=$HOME/android/sdk

if [ ! -x ./gradlew ]
then
	gradle wrapper
fi

case "$action" in
	"build")
		./gradlew build
		;;
	"install")
  		./gradlew installDebug
		;;
	"clean")
  		./gradlew clean
		;;
	*)
		echo "Usage: $0 {build|install}"
		exit 1
esac
