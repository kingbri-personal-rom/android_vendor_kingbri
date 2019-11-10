# Copyright (C) 2018-2019 Kingbri ROM
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ROM_VERSION := kingbri
BUILD_DATE := $(shell date -u +%Y%m%d)
BUILD_TIME := $(shell date -u +%H%M)
BUILD_TIMESTAMP := $(shell date -u +%s)

# Kingbri ROM version name 
KINGBRI_VERSION := $(ROM_VERSION)-$(TARGET_DEVICE)-$(shell date +%Y%m%d-%H%M)
