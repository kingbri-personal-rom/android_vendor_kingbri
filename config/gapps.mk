# Copyright 2019 GahsROM
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

include vendor/kingbri/config/utils.mk

LOCAL_TARGET_ARCH := $(call get_dump_var,TARGET_ARCH)

# Include GApps by default on arm64 builds
ifeq ($(LOCAL_TARGET_ARCH),arm64)
TARGET_INCLUDE_GAPPS ?= true
else
TARGET_INCLUDE_GAPPS ?= false
endif

ifeq ($(TARGET_INCLUDE_GAPPS),true)
ifneq ($(LOCAL_TARGET_ARCH),arm64)
$(warning * TARGET_INCLUDE_GAPPS set to true, but TARGET_ARCH is not arm64.)
$(warning * GApps do not support non-arm64 builds! GApps will be excluded.)
else
$(call inherit-product, vendor/gapps/gapps.mk)
endif # LOCAL_TARGET_ARCH
endif # TARGET_INCLUDE_GAPPS
