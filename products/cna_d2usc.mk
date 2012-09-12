$(call inherit-product, device/samsung/d2usc/full_d2usc.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_phone.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/cdma.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := GS3-USC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2usc TARGET_DEVICE=d2usc BUILD_FINGERPRINT="d2usc-user 4.0.4 IMM76D R530UVXALG1 release-keys" PRIVATE_BUILD_DESC="samsung/d2usc/d2usc:4.0.4/IMM76D/R530UVXALG1:user/release-keys"

PRODUCT_NAME := cna_d2usc
PRODUCT_DEVICE := d2usc
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SCH-R530U
PRODUCT_MANUFACTURER := Samsung

