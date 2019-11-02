# Copyright 2019 Kingbri Personal ROM
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

ifneq ($(TARGET_BUILD_VARIANT),eng)
include vendor/kingbri/config/perf.mk
endif

DEVICE_PACKAGE_OVERLAYS += \
    vendor/kingbri/overlay/common

# For bootanimation
PRODUCT_COPY_FILES += \
    vendor/kingbri/prebuilt/common/bootanimation/bootanimation.zip:$(TARGET_COPY_OUT_SYSTEM)/media/bootanimation.zip
