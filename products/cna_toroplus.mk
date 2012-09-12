$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_phone.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := GN-SPR

PRODUCT_BUILD_PROP_OVERRIDES +=  PRODUCT_NAME=mysidspr BUILD_FINGERPRINT="samsung/mysidspr/toroplus:4.0.4/IMM76D/L700FD02:user/release-keys" PRIVATE_BUILD_DESC="mysidspr-user 4.0.4 IMM76D L700FD02 release-keys"

PRODUCT_NAME := cna_toroplus
PRODUCT_DEVICE := toroplus
PRODUCT_BRAND := google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung
