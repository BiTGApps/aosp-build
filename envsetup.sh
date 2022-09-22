#!/bin/bash
#
# This file is part of The BiTGApps Project

# Runtime Variables
ARCH="$1"
API="$2"

# Check Included Targets
if [ -z "$ARCH" ] || [ -z "$API" ]; then
  echo "**************************************"
  echo "Define combination of Platform and API"
  echo "**************************************"
  exit 1
fi

# Remove Build System
rm -rf vendor/gapps

# Clone Build System
git clone https://github.com/BiTGApps/aosp-build.git vendor/gapps

# Fetch Build Sources
if [ "$ARCH" == "arm" ] && [ "$API" == "33" ]; then
  echo "*******************************************************"
  echo "Downloading Sources for ARM Platform with API Level 33"
  echo "*******************************************************"
  wget https://github.com/BiTGApps/aosp-build/releases/download/v1.0/gapps-arm-33-minimal.tar.xz
  install -d vendor/gapps/sources && tar -xf gapps-arm-33-minimal.tar.xz -C vendor/gapps/sources
elif [ "$ARCH" == "arm64" ] && [ "$API" == "33" ]; then
  echo "********************************************************"
  echo "Downloading Sources for ARM64 Platform with API Level 33"
  echo "********************************************************"
  wget https://github.com/BiTGApps/aosp-build/releases/download/v1.0/gapps-arm64-33-minimal.tar.xz
  install -d vendor/gapps/sources && tar -xf gapps-arm64-33-minimal.tar.xz -C vendor/gapps/sources
else
  echo "***************************************"
  echo "Illegal combination of Platform and API"
  echo "***************************************"
  exit 1
fi
