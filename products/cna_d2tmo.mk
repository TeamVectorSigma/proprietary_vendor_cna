$(call inherit-product, device/samsung/d2tmo/full_d2tmo.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_phone.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/gsm.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := GS3-TMO

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2tmo TARGET_DEVICE=d2tmo BUILD_FINGERPRINT="d2tmo-user 4.0.4 IMM76D T999UVALEM release-keys" PRIVATE_BUILD_DESC="samsung/d2tmo/d2tmo:4.0.4/IMM76D/T999UVALEM:user/release-keys"

PRODUCT_NAME := cna_d2tmo
PRODUCT_DEVICE := d2tmo
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SGH-T999
PRODUCT_MANUFACTURER := Samsung

