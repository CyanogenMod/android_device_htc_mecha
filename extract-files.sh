#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

DEVICE=mecha

mkdir -p ../../../vendor/htc/$DEVICE/proprietary

adb pull /system/bin/akmd ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/awb_camera ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/bma150_usr ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/btld ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/dmagent ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/htc_ebdlogd ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/ipd ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/logcat2 ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/lsc_camera ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/netmgrd ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/rild_ims ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/netsharing ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/rmt_storage ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/ser2net ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/snd3254 ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/qmuxd ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/qcrild ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/tc ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/bin/udhcpd ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/xbin/wireless_modem ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/agps_rm ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/etc/AudioBTID.csv ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libaudio.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libaudioalsa.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libaudioeq.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libcamera.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libgemini.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libgsl.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libril-qc-1.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libril-qcril-hook-oem.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libril.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libril_ims.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libhtc_acoustic.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libgpsone_bit_api.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libloc_api-rpc.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libloc_api.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libloc_ext.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libmmipl.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libmmjpeg.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/liboemcamera.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libposteffect.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libping_apps.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libping_lte_rpc.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libping_mdm.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/liboncrpc.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libdsm.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libqueue.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libdiag.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libauth.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libcm.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libmmgsdilib.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libgsdi_exp.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libgstk_exp.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libnv.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libpbmlib.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libpdsm_atl.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libwms.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libwmsts.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libpdapi.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libcm_fusion.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libpbmlib_fusion.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libwms_fusion.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libwsp.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libwsp_jni.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/liboem_rapi.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/liboem_rapi_fusion.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libqmi.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libqmiservices.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libreference-cdma-sms.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libdll.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libidl.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libdsutils.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libdsi_netctrl.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libnetmgr.so ../../../vendor/htc/$DEVICE/proprietary
adb pull /system/lib/libqdp.so ../../../vendor/htc/$DEVICE/proprietary

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/htc/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/htc/__DEVICE__/extract-files.sh

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/libcamera.so:obj/lib/libcamera.so \\
    vendor/htc/__DEVICE__/proprietary/libaudio.so:obj/lib/libaudio.so \\
    vendor/htc/__DEVICE__/proprietary/libaudioalsa.so:obj/lib/libaudioalsa.so \\
    vendor/htc/__DEVICE__/proprietary/libril.so:obj/lib/libril.so

# All the blobs necessary for mecha
PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/akmd:/system/bin/akmd \\
    vendor/htc/__DEVICE__/proprietary/awb_camera:/system/bin/awb_camera \\
    vendor/htc/__DEVICE__/proprietary/bma150_usr:/system/bin/bma150_usr \\
    vendor/htc/__DEVICE__/proprietary/dmagent:/system/bin/dmagent \\
    vendor/htc/__DEVICE__/proprietary/htc_ebdlogd:/system/bin/htc_ebdlogd \\
    vendor/htc/__DEVICE__/proprietary/ipd:/system/bin/ipd \\
    vendor/htc/__DEVICE__/proprietary/logcat2:/system/bin/logcat2 \\
    vendor/htc/__DEVICE__/proprietary/lsc_camera:/system/bin/lsc_camera \\
    vendor/htc/__DEVICE__/proprietary/netmgrd:/system/bin/netmgrd \\
    vendor/htc/__DEVICE__/proprietary/netsharing:/system/bin/netsharing \\
    vendor/htc/__DEVICE__/proprietary/rild_ims:/system/bin/rild_ims \\
    vendor/htc/__DEVICE__/proprietary/rmt_storage:/system/bin/rmt_storage \\
    vendor/htc/__DEVICE__/proprietary/ser2net:/system/bin/ser2net \\
    vendor/htc/__DEVICE__/proprietary/snd3254:/system/bin/snd3254 \\
    vendor/htc/__DEVICE__/proprietary/tc:/system/bin/tc \\
    vendor/htc/__DEVICE__/proprietary/btld:/system/bin/btld \\
    vendor/htc/__DEVICE__/proprietary/qmuxd:/system/bin/qmuxd \\
    vendor/htc/__DEVICE__/proprietary/qcrild:/system/bin/qcrild \\
    vendor/htc/__DEVICE__/proprietary/qcrild:/system/bin/rild \\
    vendor/htc/__DEVICE__/proprietary/udhcpd:/system/bin/udhcpd \\
    vendor/htc/__DEVICE__/proprietary/wireless_modem:/system/xbin/wireless_modem \\
    vendor/htc/__DEVICE__/proprietary/agps_rm:/system/etc/agps_rm \\
    vendor/htc/__DEVICE__/proprietary/AudioBTID.csv:/system/etc/AudioBTID.csv \\
    vendor/htc/__DEVICE__/proprietary/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libaudio.so:/system/lib/libaudio.so \\
    vendor/htc/__DEVICE__/proprietary/libaudioalsa.so:/system/lib/libaudioalsa.so \\
    vendor/htc/__DEVICE__/proprietary/libaudioeq.so:/system/lib/libaudioeq.so \\
    vendor/htc/__DEVICE__/proprietary/libauth.so:/system/lib/libauth.so \\
    vendor/htc/__DEVICE__/proprietary/libcamera.so:/system/lib/libcamera.so \\
    vendor/htc/__DEVICE__/proprietary/libcm.so:/system/lib/libcm.so \\
    vendor/htc/__DEVICE__/proprietary/libcm_fusion.so:/system/lib/libcm_fusion.so \\
    vendor/htc/__DEVICE__/proprietary/libdiag.so:/system/lib/libdiag.so \\
    vendor/htc/__DEVICE__/proprietary/libdll.so:/system/lib/libdll.so \\
    vendor/htc/__DEVICE__/proprietary/libdsutils.so:/system/lib/libdsutils.so \\
    vendor/htc/__DEVICE__/proprietary/libdsi_netctrl.so:/system/lib/libdsi_netctrl.so \\
    vendor/htc/__DEVICE__/proprietary/libdsm.so:/system/lib/libdsm.so \\
    vendor/htc/__DEVICE__/proprietary/libgemini.so:/system/lib/libgemini.so \\
    vendor/htc/__DEVICE__/proprietary/libgsl.so:/system/lib/libgsl.so \\
    vendor/htc/__DEVICE__/proprietary/libgpsone_bit_api.so:/system/lib/libgpsone_bit_api.so \\
    vendor/htc/__DEVICE__/proprietary/libgsdi_exp.so:/system/lib/libgsdi_exp.so \\
    vendor/htc/__DEVICE__/proprietary/libgstk_exp.so:/system/lib/libgstk_exp.so \\
    vendor/htc/__DEVICE__/proprietary/libhtc_acoustic.so:/system/lib/libhtc_acoustic.so \\
    vendor/htc/__DEVICE__/proprietary/libidl.so:/system/lib/libidl.so \\
    vendor/htc/__DEVICE__/proprietary/libloc_api.so:/system/lib/libloc_api.so \\
    vendor/htc/__DEVICE__/proprietary/libloc_api-rpc.so:/system/lib/libloc_api-rpc.so \\
    vendor/htc/__DEVICE__/proprietary/libloc_ext.so:/system/lib/libloc_ext.so \\
    vendor/htc/__DEVICE__/proprietary/libmmipl.so:/system/lib/libmmipl.so \\
    vendor/htc/__DEVICE__/proprietary/libmmjpeg.so:/system/lib/libmmjpeg.so \\
    vendor/htc/__DEVICE__/proprietary/libmmgsdilib.so:/system/lib/libmmgsdilib.so \\
    vendor/htc/__DEVICE__/proprietary/libnetmgr.so:/system/lib/libnetmgr.so \\
    vendor/htc/__DEVICE__/proprietary/libnv.so:/system/lib/libnv.so \\
    vendor/htc/__DEVICE__/proprietary/liboemcamera.so:/system/lib/liboemcamera.so \\
    vendor/htc/__DEVICE__/proprietary/liboncrpc.so:/system/lib/liboncrpc.so \\
    vendor/htc/__DEVICE__/proprietary/liboem_rapi.so:/system/lib/liboem_rapi.so \\
    vendor/htc/__DEVICE__/proprietary/liboem_rapi_fusion.so:/system/lib/liboem_rapi_fusion.so \\
    vendor/htc/__DEVICE__/proprietary/libposteffect.so:/system/lib/libposteffect.so \\
    vendor/htc/__DEVICE__/proprietary/libping_apps.so:/system/lib/libping_apps.so \\
    vendor/htc/__DEVICE__/proprietary/libping_lte_rpc.so:/system/lib/libping_lte_rpc.so \\
    vendor/htc/__DEVICE__/proprietary/libping_mdm.so:/system/lib/libping_mdm.so \\
    vendor/htc/__DEVICE__/proprietary/libpbmlib.so:/system/lib/libpbmlib.so \\
    vendor/htc/__DEVICE__/proprietary/libpbmlib_fusion.so:/system/lib/libpbmlib_fusion.so \\
    vendor/htc/__DEVICE__/proprietary/libpdapi.so:/system/lib/libpdapi.so \\
    vendor/htc/__DEVICE__/proprietary/libpdsm_atl.so:/system/lib/libpdsm_atl.so \\
    vendor/htc/__DEVICE__/proprietary/libqdp.so:/system/lib/libqdp.so \\
    vendor/htc/__DEVICE__/proprietary/libqueue.so:/system/lib/libqueue.so \\
    vendor/htc/__DEVICE__/proprietary/libqmi.so:/system/lib/libqmi.so \\
    vendor/htc/__DEVICE__/proprietary/libqmiservices.so:/system/lib/libqmiservices.so \\
    vendor/htc/__DEVICE__/proprietary/libreference-cdma-sms.so:/system/lib/libreference-cdma-sms.so \\
    vendor/htc/__DEVICE__/proprietary/libril-qc-1.so:/system/lib/libril-qc-1.so \\
    vendor/htc/__DEVICE__/proprietary/libril.so:/system/lib/libril.so \\
    vendor/htc/__DEVICE__/proprietary/libril_ims.so:/system/lib/libril_ims.so \\
    vendor/htc/__DEVICE__/proprietary/libril-qcril-hook-oem.so:/system/lib/libril-qcril-hook-oem.so \\
    vendor/htc/__DEVICE__/proprietary/libwms.so:/system/lib/libwms.so \\
    vendor/htc/__DEVICE__/proprietary/libwms_fusion.so:/system/lib/libwms_fusion.so \\
    vendor/htc/__DEVICE__/proprietary/libwmsts.so:/system/lib/libwmsts.so \\
    vendor/htc/__DEVICE__/proprietary/libwsp.so:/system/lib/libwsp.so \\
    vendor/htc/__DEVICE__/proprietary/libwsp_jni.so:/system/lib/libwsp_jni.so 
EOF

./setup-makefiles.sh
