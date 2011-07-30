#
# Copyright (C) 2011 The CyanogenMod Project
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
#

# The gps config appropriate for this device
PRODUCT_COPY_FILES += \
    device/htc/mecha/gps.conf:system/etc/gps.conf

## (1) First, the most specific values, i.e. the aspects that are specific to GSM

PRODUCT_COPY_FILES += \
    device/htc/mecha/init.mecha.rc:root/init.mecha.rc \
    device/htc/mecha/ueventd.mecha.rc:root/ueventd.mecha.rc

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/htc/mecha/mecha-vendor.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.oem.ecclist=112,911 \
    ro.ril.enable.a52=0 \
    ro.ril.enable.a53=1 \
    ro.ril.def.agps.mode=6 \
    htc.audio.alt.enable=1 \
    htc.audio.hac.enable=1 \
    ro.com.google.clientidbase=android-htc \
    ro.com.google.clientidbase.yt=android-htc \
    ro.com.google.clientidbase.am=android-verizon \
    ro.com.google.clientidbase.vs=android-verizon \
    ro.com.google.clientidbase.gmm=android-verizon \
    ro.com.google.clientidbase.ms=android-verizon \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=2.2_r8 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y \
    ro.cdma.home.operator.numeric = 310012 \
    ro.cdma.home.operator.alpha = Verizon \
    ro.telephony.call_ring.multiple=false \
    persist.cne.UseCne=false \
    persist.cne.bat.range.low.med=30 \
    persist.cne.bat.range.med.high=60 \
    persist.cne.loc.policy.op=/system/etc/OperatorPolicy.xml \
    persist.cne.loc.policy.user=/system/etc/UserPolicy.xml \
    persist.cne.bwbased.rat.sel=false \
    persist.cne.snsr.based.rat.mgt=false \
    persist.cne.bat.based.rat.mgt=false \
    persist.cne.be.ge.sqi.min=0 \
    persist.cne.be.ge.sqi.max=100 \
    persist.cne.be.umts.sqi.min=0 \
    persist.cne.be.umts.sqi.max=100 \
    persist.cne.be.hspa.sqi.min=0 \
    persist.cne.be.hspa.sqi.max=100 \
    persist.cne.be.1x.sqi.min=0 \
    persist.cne.be.1x.sqi.max=100 \
    persist.cne.be.do.sqi.min=0 \
    persist.cne.be.do.sqi.max=100 \
    persist.cne.be.wlan.sqi.min=0 \
    persist.cne.be.wlan.sqi.max=100
    persist.telephony.support_ipv6=true \
    persist.telephony.support_ipv4=true

DEVICE_PACKAGE_OVERLAYS += device/htc/mecha/overlay

# Permission xmls
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml

# config xml file
PRODUCT_COPY_FILES += \
    device/htc/mecha/spn-conf.xml:system/etc/spn-conf.xml \
    device/htc/mecha/voicemail-conf.xml:system/etc/voicemail-conf.xml \
    device/htc/mecha/apns-conf.xml:system/etc/apns-conf.xml \
    device/htc/mecha/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_PACKAGES += \
    lights.mecha \
    sensors.mecha

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/mecha/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/htc/mecha/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/htc/mecha/keychars/mecha-keypad.kcm.bin:system/usr/keychars/mecha-keypad.kcm.bin \
    device/htc/mecha/keychars/mecha-keypad-v0.kcm.bin:system/usr/keychars/mecha-keypad-v0.kcm.bin \
    device/htc/mecha/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/mecha/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/mecha/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/htc/mecha/keylayout/mecha-keypad-v0.kl:system/usr/keylayout/mecha-keypad-v0.kl \
    device/htc/mecha/keylayout/mecha-keypad.kl:system/usr/keylayout/mecha-keypad.kl

# Firmware
PRODUCT_COPY_FILES += \
    device/htc/mecha/firmware/bcm4329.hcd:system/etc/firmware/bcm4329.hcd \
    device/htc/mecha/firmware/fw_bcm4329.bin:system/etc/firmware/fw_bcm4329.bin \
    device/htc/mecha/firmware/fw_bcm4329_apsta.bin:system/etc/firmware/fw_bcm4329_apsta.bin \
    device/htc/mecha/firmware/default.acdb:system/etc/firmware/default.acdb \
    device/htc/mecha/firmware/default_org.acdb:system/etc/firmware/default_org.acdb \
    device/htc/mecha/firmware/default_mfg.acdb:system/etc/firmware/default_mfg.acdb \
    device/htc/mecha/firmware/mp2_dec_mc.fw:system/etc/firmware/mp2_dec_mc.fw \
    device/htc/mecha/firmware/vidc_720p_command_control.fw:system/etc/firmware/vidc_720p_command_control.fw \
    device/htc/mecha/firmware/vidc_720p_h263_dec_mc.fw:system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/htc/mecha/firmware/vidc_720p_h264_dec_mc.fw:system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/htc/mecha/firmware/vidc_720p_h264_enc_mc.fw:system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/htc/mecha/firmware/vidc_720p_mp2_dec_mc.fw:system/etc/firmware/vidc_720p_mp2_dec_mc.fw \
    device/htc/mecha/firmware/vidc_720p_mp4_dec_mc.fw:system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/htc/mecha/firmware/vidc_720p_mp4_enc_mc.fw:system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/htc/mecha/firmware/vidc_720p_vc1_dec_mc.fw:system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/htc/mecha/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/htc/mecha/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

# Audio DSP Profiles
PRODUCT_COPY_FILES += \
    device/htc/mecha/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/mecha/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/mecha/dsp/AIC3254_REG_DualMicXD01.csv:system/etc/AIC3254_REG_DualMicXD01.csv \
    device/htc/mecha/dsp/AIC3254_REG_DualMicXD02.csv:system/etc/AIC3254_REG_DualMicXD02.csv \
    device/htc/mecha/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/mecha/dsp/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/mecha/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/mecha/dsp/CodecDSPID_BCLK.txt:system/etc/CodecDSPID_BCLK.txt \
    device/htc/mecha/dsp/HP_Audio.csv:system/etc/HP_Audio.csv \
    device/htc/mecha/dsp/HP_Video.csv:system/etc/HP_Video.csv \
    device/htc/mecha/dsp/SPK_Combination.csv:system/etc/SPK_Combination.csv \
    device/htc/mecha/dsp/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/htc/mecha/dsp/soundimage/Sound_Bass_Booster.txt:system/etc/soundimage/Sound_Bass_Booster.txt \
    device/htc/mecha/dsp/soundimage/Sound_Blues.txt:system/etc/soundimage/Sound_Blues.txt \
    device/htc/mecha/dsp/soundimage/Sound_Classical.txt:system/etc/soundimage/Sound_Classical.txt \
    device/htc/mecha/dsp/soundimage/Sound_Country.txt:system/etc/soundimage/Sound_Country.txt \
    device/htc/mecha/dsp/soundimage/Sound_Dolby_A_HP.txt:system/etc/soundimage/Sound_Dolby_A_HP.txt \
    device/htc/mecha/dsp/soundimage/Sound_Dolby_A_SPK.txt:system/etc/soundimage/Sound_Dolby_A_SPK.txt \
    device/htc/mecha/dsp/soundimage/Sound_Dolby_HP.txt:system/etc/soundimage/Sound_Dolby_HP.txt \
    device/htc/mecha/dsp/soundimage/Sound_Dolby_Spk.txt:system/etc/soundimage/Sound_Dolby_Spk.txt \
    device/htc/mecha/dsp/soundimage/Sound_Dolby_V_HP.txt:system/etc/soundimage/Sound_Dolby_V_HP.txt \
    device/htc/mecha/dsp/soundimage/Sound_Dolby_V_SPK.txt:system/etc/soundimage/Sound_Dolby_V_SPK.txt \
    device/htc/mecha/dsp/soundimage/Sound_Dualmic.txt:system/etc/soundimage/Sound_Dualmic.txt \
    device/htc/mecha/dsp/soundimage/Sound_Dualmic_EP.txt:system/etc/soundimage/Sound_Dualmic_EP.txt \
    device/htc/mecha/dsp/soundimage/Sound_Dualmic_SPK.txt:system/etc/soundimage/Sound_Dualmic_SPK.txt \
    device/htc/mecha/dsp/soundimage/Sound_Jazz.txt:system/etc/soundimage/Sound_Jazz.txt \
    device/htc/mecha/dsp/soundimage/Sound_Latin.txt:system/etc/soundimage/Sound_Latin.txt \
    device/htc/mecha/dsp/soundimage/Sound_New_Age.txt:system/etc/soundimage/Sound_New_Age.txt \
    device/htc/mecha/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/mecha/dsp/soundimage/Sound_Original_BCLK.txt:system/etc/soundimage/Sound_Original_BCLK.txt \
    device/htc/mecha/dsp/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    device/htc/mecha/dsp/soundimage/Sound_Original_Recording_BCLK.txt:system/etc/soundimage/Sound_Original_Recording_BCLK.txt \
    device/htc/mecha/dsp/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/mecha/dsp/soundimage/Sound_Original_SPK_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_SPK_BCLK.txt \
    device/htc/mecha/dsp/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/htc/mecha/dsp/soundimage/Sound_Phone_Original_HP_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_HP_BCLK.txt \
    device/htc/mecha/dsp/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/mecha/dsp/soundimage/Sound_Phone_Original_REC_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_REC_BCLK.txt \
    device/htc/mecha/dsp/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/htc/mecha/dsp/soundimage/Sound_Phone_Original_SPK_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_SPK_BCLK.txt \
    device/htc/mecha/dsp/soundimage/Sound_Piano.txt:system/etc/soundimage/Sound_Piano.txt \
    device/htc/mecha/dsp/soundimage/Sound_Pop.txt:system/etc/soundimage/Sound_Pop.txt \
    device/htc/mecha/dsp/soundimage/Sound_R_B.txt:system/etc/soundimage/Sound_R_B.txt \
    device/htc/mecha/dsp/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    device/htc/mecha/dsp/soundimage/Sound_Recording_BCLK.txt:system/etc/soundimage/Sound_Recording_BCLK.txt \
    device/htc/mecha/dsp/soundimage/Sound_Rock.txt:system/etc/soundimage/Sound_Rock.txt \
    device/htc/mecha/dsp/soundimage/Sound_SRS_A_HP.txt:system/etc/soundimage/Sound_SRS_A_HP.txt \
    device/htc/mecha/dsp/soundimage/Sound_SRS_A_SPK.txt:system/etc/soundimage/Sound_SRS_A_SPK.txt \
    device/htc/mecha/dsp/soundimage/Sound_SRS_V_HP.txt:system/etc/soundimage/Sound_SRS_V_HP.txt \
    device/htc/mecha/dsp/soundimage/Sound_SRS_V_SPK.txt:system/etc/soundimage/Sound_SRS_V_SPK.txt \
    device/htc/mecha/dsp/soundimage/Sound_Treble_Booster.txt:system/etc/soundimage/Sound_Treble_Booster.txt \
    device/htc/mecha/dsp/soundimage/Sound_Vocal_Booster.txt:system/etc/soundimage/Sound_Vocal_Booster.txt

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# mecha uses high-density artwork where available
PRODUCT_LOCALES += hdpi

PRODUCT_COPY_FILES += \
    device/htc/mecha/vold.fstab:system/etc/vold.fstab

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/htc/mecha/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/htc/mecha/modules/bcm4329.ko:system/lib/modules/bcm4329.ko

# common msm7x30 configs
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)

# media profiles and capabilities spec
$(call inherit-product, device/htc/mecha/media_a1026.mk)

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_BRAND := HTC
PRODUCT_NAME := htc_mecha
PRODUCT_DEVICE := mecha
PRODUCT_MODEL := HTC ThunderBolt
PRODUCT_MANUFACTURER := HTC
