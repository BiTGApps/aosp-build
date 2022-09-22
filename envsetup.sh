#!/bin/bash
#
# This file is part of The BiTGApps Project

# Runtime Variables
ARCH="$1"
API="$2"

echo "*********************************************************"
echo " BiTGApps AOSP Build System is currently Work-in-Progress"
echo "*********************************************************"
exit 1

# Clone Build System
git clone https://github.com/BiTGApps/aosp-build.git vendor/gapps

# Fetch Build Sources
if [ "$ARCH" == "arm" ] && [ "$API" == "33" ]; then
  echo "Downloading Sources for ARM Platform with API Level 33"
  wget https://github.com/BiTGApps/asop-build/releases/download/v1.0/gapps-arm-33-minimal.tar.xz
  tar -xf gapps-arm-33-minimal.tar.xz -C vendor/gapps/sources
elif [ "$ARCH" == "arm64" ] && [ "$API" == "33" ]; then
  echo "Downloading Sources for ARM64 Platform with API Level 33"
  wget https://github.com/BiTGApps/asop-build/releases/download/v1.0/gapps-arm64-33-minimal.tar.xz
  tar -xf gapps-arm-arm64-minimal.tar.xz -C vendor/gapps/sources
else
  echo "***************************************"
  echo "Illegal combination of Platform and API"
  echo "***************************************"
fi
