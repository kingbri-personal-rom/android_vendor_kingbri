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

PREBUILT_AUDIO_PATH := vendor/kingbri/prebuilt/common/media/audio

ALARM_FILES := Icicles Full_of_wonder Rise Jump_start Flow Rolling_fog Drip A_real_hoot \
	Early_twilight Spokes Gallop Sway Wag Loose_change Gentle_breeze Awaken Orbit Sunshower \
	Bright_morning Cuckoo_clock Nudge Bounce

NOTIFICATION_FILES := End_note Ping Trill Gentle_gong Tweeter Mallet Popcorn Beginning Duet Strum \
	Sticks_and_stones Birdsong Note Clink Twinkle Tuneup Pipes Chime Orders_up Coconuts Hey \
	Shopkeeper Flick

RINGTONE_FILES := Dance_party Spaceship The_big_adventure Zen_too Monkey_around Hey_hey Copycat \
	Summer_night Zen Romance Crackle Early_bird Beats Flutterby Hotline Rrrring Mash_up \
	Shooting_star Schools_out Leaps_and_bounds Lollipop Lost_and_found

UI_FILES := audio_end audio_initiate InCallNotification KeypressStandard KeypressInvalid Dock \
	Undock Lock camera_click camera_focus KeypressReturn KeypressSpacebar Trusted Effect_Tick \
	KeypressDelete Unlock

PRODUCT_COPY_FILES += $(foreach f,$(ALARM_FILES),\
	$(PREBUILT_AUDIO_PATH)/alarms/$(f).ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/$(f).ogg)

PRODUCT_COPY_FILES += $(foreach f,$(NOTIFICATION_FILES),\
	$(PREBUILT_AUDIO_PATH)/notifications/$(f).ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/$(f).ogg)

PRODUCT_COPY_FILES += $(foreach f,$(RINGTONE_FILES),\
	$(PREBUILT_AUDIO_PATH)/ringtones/$(f).ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/$(f).ogg)

PRODUCT_COPY_FILES += $(foreach f,$(UI_FILES),\
	$(PREBUILT_AUDIO_PATH)/ui/$(f).ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/$(f).ogg)

PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.ringtone=Shooting_star.ogg \
    ro.config.notification_sound=Mallet.ogg \
    ro.config.alarm_alert=Spokes.ogg
