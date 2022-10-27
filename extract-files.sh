#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function blob_fixup() {
    case "${1}" in
    vendor/lib/hw/camera.msm8998.so)
        sed -i "s|libgui.so|libfui.so|g" "${2}"
        ;;
    vendor/lib/libNubiaImageAlgorithm.so)
        patchelf --add-needed "libNubiaImageAlgorithmShim.so" "${2}"
        patchelf --remove-needed "libjnigraphics.so" "${2}"
        patchelf --remove-needed "libnativehelper.so" "${2}"
        ;;
    vendor/lib/libarcsoft_picauto.so)
        patchelf --remove-needed "libandroid.so" "${2}"
        ;;
    vendor/lib/libmmcamera_ppeiscore.so | vendor/lib/libmmcamera_bokeh.so | vendor/lib/libnubia_effect.so | vendor/lib64/libnubia_effect.so)
        sed -i "s|libgui.so|libfui.so|g" "${2}"
        ;;
    esac
}

if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=nx595j
export DEVICE_COMMON=msm8998-common
export VENDOR=nubia

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
