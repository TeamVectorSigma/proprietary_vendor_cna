$(call inherit-product, device/samsung/d2spr/full_d2spr.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_phone.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/cdma.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := GS3-SPR

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2spr TARGET_DEVICE=d2spr BUILD_FINGERPRINT="d2spr-user 4.0.4 IMM76D L710VPALG2 release-keys" PRIVATE_BUILD_DESC="samsung/d2spr/d2spr:4.0.4/IMM76D/L710VPALG2:user/release-keys"

PRODUCT_NAME := cna_d2spr
PRODUCT_DEVICE := d2spr
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SPH-L710
PRODUCT_MANUFACTURER := Samsung

