## BiTGApps AOSP Based Build System

## Disclaimer
1. **Use this at your own risk.** Cyanogenmod received a cease and desist letter from Google when they included Google Apps in their ROM. See: [A Note on Google Apps for Android](http://android-developers.blogspot.com/2009/09/note-on-google-apps-for-android.html)
2. **This project is in no way affiliated with, sponsored by, or related to Google.**

## Getting started

**1. Download Build Script**

```
curl -sLo envsetup.sh https://raw.githubusercontent.com/BiTGApps/aosp-build/master/envsetup.sh
```

**2. Clone Build System**

```
chmod +x envsetup.sh
envsetup.sh [ARCH] [API]
```

**3. Include GApps Make File**

The `gapps.mk` file will make the Android build system build the necessary packages, and include the necessary files.

In `device/manufacturer/product/device.mk` file, towards the end, add:

```
$(call inherit-product, vendor/gapps/gapps.mk)
```

**4. PlayStoreOverlay**

Prebuilt PlayStoreOverlay APK taken from OpenGApps. [Source](https://gitlab.opengapps.org/opengapps/all/-/commit/36c9eb21f93d2649cc5dcc29d308fb244859f533) with build instructions.

## License

The BiTGApps Project itself is licensed under the [GPLv3](https://www.gnu.org/licenses/gpl-3.0.txt).

[![GPLv3](https://www.gnu.org/graphics/gplv3-127x51.png)](https://www.gnu.org/licenses/gpl-3.0.en.html)
