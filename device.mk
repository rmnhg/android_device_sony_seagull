# Copyright 2017 The LineageOS Project
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

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/seagull/overlay

# Device etc
PRODUCT_COPY_FILES += \
    device/sony/seagull/rootdir/system/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/sony/seagull/rootdir/system/etc/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf \
    device/sony/seagull/rootdir/system/etc/thermanager.xml:system/etc/thermanager.xml \
    device/sony/seagull/rootdir/system/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/sony/seagull/rootdir/system/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    device/sony/seagull/rootdir/init.yukon.dev.rc:root/init.yukon.dev.rc \
    device/sony/seagull/rootdir/fstab.yukon:root/fstab.yukon
    
# IDC
PRODUCT_COPY_FILES += \
    device/sony/seagull/rootdir/system/usr/idc/cyttsp4_mt.idc:system/usr/idc/cyttsp4_mt.idc

PRODUCT_PACKAGES += \
    keystore.msm8226

PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREBUILT_DPI := hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=280

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/yukon/platform.mk)
$(call inherit-product, vendor/sony/seagull/seagull-vendor.mk)
