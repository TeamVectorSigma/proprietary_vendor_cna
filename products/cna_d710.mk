$(call inherit-product, device/samsung/d710/full_d710.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/common_full_phone.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/cna/config/cdma.mk)

PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip \
    vendor/cna/prebuilt/hdpi/blaster.mp3:system/media/blaster.mp3

# Release name
PRODUCT_RELEASE_NAME := D710

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SPH-D710 TARGET_DEVICE=SPH-D710 BUILD_FINGERPRINT=samsung/SPH-D710/SPH-D710:4.0.4/IMM76I/FF18:user/release-keys  PRIVATE_BUILD_DESC="SPH-D710-user 4.0.4 IMM76I FF18 release-keys"

PRODUCT_NAME := cna_d710
PRODUCT_DEVICE := d710
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SPH-D710
