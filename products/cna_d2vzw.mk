$(call inherit-product, device/samsung/d2vzw/full_d2vzw.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_phone.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/cdma.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := GS3-VZW

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2vzw TARGET_DEVICE=d2vzw BUILD_FINGERPRINT="d2vzw-user 4.0.4 IMM76D I535VRALF2 release-keys" PRIVATE_BUILD_DESC="Verizon/d2vzw/d2vzw:4.0.4/IMM76D/I535VRALF2:user/release-keys"

PRODUCT_NAME := cna_d2vzw
PRODUCT_DEVICE := d2vzw
PRODUCT_BRAND := Verizon
PRODUCT_MODEL := SCH-I535
PRODUCT_MANUFACTURER := Samsung

