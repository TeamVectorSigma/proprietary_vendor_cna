$(call inherit-product, device/samsung/i9300/full_i9300.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_phone.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/gsm.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := GS3-INTL

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m0xx TARGET_DEVICE=m0 BUILD_FINGERPRINT="samsung/m0xx/m0:4.0.4/IMM76D/I9300XXALE8:user/release-keys" PRIVATE_BUILD_DESC="m0xx-user 4.0.4 IMM76D I9300XXALE8 release-keys"

PRODUCT_NAME := cna_i9300
PRODUCT_DEVICE := i9300
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I9300
PRODUCT_MANUFACTURER := Samsung

