#
# Copyright (C) 2018-2022 The BiTGApps Project
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.

LOCAL_PATH := .
include $(CLEAR_VARS)
LOCAL_MODULE := PlayStoreOverlay
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_PACKAGE_NAME := PlayStoreOverlay
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERLAY_MODULE := true
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/overlay
include $(APK_PREBUILT)
include $(BUILD_PREBUILT)
