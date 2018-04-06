# Inherit AOSP device configuration for RK3368.
$(call inherit-product, device/rockchip/rk3368/full_rk3368.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Include extra dictionaries for LatinIME
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/dictionaries

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_rk3368
PRODUCT_BRAND := rockchip
PRODUCT_DEVICE := rk3368
PRODUCT_MODEL := RK3368
PRODUCT_MANUFACTURER := Rockchip
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=rk3368 BUILD_ID=GRK39F BUILD_FINGERPRINT=google/soju/crespo:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.6 GRK39F 189904 release-keys" BUILD_NUMBER=189904

# Extra RK3368 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rockchip/rk3368/overlay

# Release name and versioning
PRODUCT_RELEASE_NAME := RK3368
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy RK3368 specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
