$(call inherit-product, device/samsung/d2att/full_d2att.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_phone.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/gsm.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := GS3-ATT

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2uc TARGET_DEVICE=d2att BUILD_FINGERPRINT="d2uc-user 4.0.4 IMM76D I747UCALEM release-keys" PRIVATE_BUILD_DESC="samsung/d2uc/d2att:4.0.4/IMM76D/I747UCALEM:user/release-keys"

PRODUCT_NAME := cna_d2att
PRODUCT_DEVICE := d2att
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SAMSUNG-SGH-I747
PRODUCT_MANUFACTURER := Samsung

