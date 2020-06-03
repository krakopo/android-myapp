#!/bin/sh

set -xe

gradle wrapper
./gradlew build
