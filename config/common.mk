PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# init.d support
PRODUCT_COPY_FILES += \
    vendor/cna/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/cna/prebuilt/common/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/cna/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/cna/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/cna/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/cna/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

PRODUCT_COPY_FILES +=  \
    vendor/cna/proprietary/supersu/su:system/xbin/su

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/cna/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/cna/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd 

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# This is CM!
PRODUCT_COPY_FILES += \
    vendor/cm/config/permissions/com.cyanogenmod.android.xml:system/etc/permissions/com.cyanogenmod.android.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/cna/prebuilt/common/etc/mkshrc:system/etc/mkshrc \
    vendor/cna/prebuilt/common/etc/sysctl.conf:system/bin/sysctl.conf

PRODUCT_COPY_FILES += \
    vendor/cna/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/cna/prebuilt/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/cna/prebuilt/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/cna/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/cna/prebuilt/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/cna/prebuilt/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/cna/prebuilt/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/cna/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/cna/prebuilt/common/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/cna/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/cna/prebuilt/common/etc/init_trigger.disabled:system/etc/init_trigger.disabled \
    vendor/cna/prebuilt/common/etc/liberty.bsh:system/etc/liberty.bsh \
    vendor/cna/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf    

PRODUCT_COPY_FILES += \
    vendor/cna/prebuilt/common/etc/cron/cron.conf:system/etc/cron/cron.conf \
    vendor/cna/prebuilt/common/etc/cron/cron.hourly/00drop_caches:system/etc/cron/cron.hourly/00drop_caches \
    vendor/cna/prebuilt/common/etc/cron/cron.daily/00drop_caches:system/etc/cron/cron.daily/00drop_caches \
    vendor/cna/prebuilt/common/etc/cron/cron.weekly/00drop_caches:system/etc/cron/cron.weekly/00drop_caches \
    vendor/cna/prebuilt/common/etc/cron/cron.hourly/01clear_cache:system/etc/cron/cron.hourly/01clear_cache \
    vendor/cna/prebuilt/common/etc/cron/cron.daily/01clear_cache:system/etc/cron/cron.daily/01clear_cache \
    vendor/cna/prebuilt/common/etc/cron/cron.weekly/01clear_cache:system/etc/cron/cron.weekly/01clear_cache 

# Required packages
PRODUCT_PACKAGES += \
    Camera \
    Development \
    LatinIME \
    SpareParts \
    Superuser

# Optional packages
PRODUCT_PACKAGES += \
    VideoEditor \
    VoiceDialer \
    SoundRecorder \
    Basic \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam\
    Apollo 

# Extra Optional packages
PRODUCT_PACKAGES += \
    CNAWallpapers \
    Trebuchet \
    DSPManager

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    vim \
    nano \
    htop \
    powertop \
    lsof

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

PRODUCT_PACKAGE_OVERLAYS += vendor/cna/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/cna/overlay/common

# T-Mobile theme engine
include vendor/cna/config/themes_common.mk

BRANCH = JoyRide
PRODUCT_VERSION_MAJOR = 3
PRODUCT_VERSION_MINOR = 8
PRODUCT_VERSION_MAINTENANCE = 0

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JZO54K

# GOO-Integration Tools
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=justlovejoy \
	ro.goo.board=$(TARGET_PRODUCT) \
	ro.goo.rom=cna_$(TARGET_PRODUCT) \
	ro.goo.version=$(shell date +%m%d%Y)

PRODUCT_PROPERTY_OVERRIDES += \
ro.cnaversion=Codename-Android-$(BRANCH)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-$(shell date +%m%d%Y)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-ALPHA-3

ifdef CNA_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=Codename-Android-$(BRANCH)-$(PRODUCT_VERSION_MAJOR)-$(shell date +%m%d%Y)-NIGHTLY-$(PRODUCT_RELEASE_NAME)
else
    ifdef CNA_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=Codename-Android-$(BRANCH)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)-$(shell date +%m%d%Y)-$(PRODUCT_RELEASE_NAME)
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=Codename-Android-$(BRANCH)-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-RC-$(PRODUCT_RELEASE_NAME)-UNOFFICIAL
    endif
endif
