# Copyright 2019 KingbriROM
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include vendor/kingbri/config/fonts.mk
include vendor/kingbri/config/google_audio.mk
include frameworks/base/data/sounds/AudioPackage14.mk
include vendor/kingbri/config/gapps.mk
include vendor/kingbri/config/version.mk

ifneq ($(TARGET_BUILD_VARIANT),eng)
include vendor/kingbri/config/perf.mk
endif

DEVICE_PACKAGE_OVERLAYS += \
    vendor/kingbri/overlay/common

PRODUCT_PACKAGES += \
    ThemePicker \
    GahsThemePickerStub \
    FontArbutusSourceOverlay \
    FontLatoZillaOverlay \
    FontRubikRubikOverlay \
    Lawnchair

# For bootanimation
PRODUCT_COPY_FILES += \
    vendor/kingbri/prebuilt/common/bootanimation/bootanimation.zip:$(TARGET_COPY_OUT_SYSTEM)/media/bootanimation.zip

# World APN list
PRODUCT_PACKAGES += \
    apns-conf.xml

# Privapp-permissions
# Lawnchair
PRODUCT_COPY_FILES += \
    vendor/kingbri/prebuilt/common/etc/permissions/privapp-permissions-lawnchair.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-lawnchair.xml \
    vendor/kingbri/prebuilt/common/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml
