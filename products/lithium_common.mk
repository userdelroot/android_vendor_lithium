$(call inherit-product, vendor/lithium/products/lithium_generic.mk)

# Generic LithiumMod product
PRODUCT_NAME := lithium_common
PRODUCT_BRAND := lithium
PRODUCT_DEVICE := 

# include hdpi packages
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    SoundRecorder \
    VisualizationWallpapers \
    VoiceDialer \
    libRS \
    librs_jni
    # MagicSmokeWallpapers \

# already included in lithium_core
#PRODUCT_POLICY := android.policy_phone

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

# Enable Windows Media if supported by the board
WITH_WINDOWS_MEDIA:=true

# LithiumMod specific product packages
PRODUCT_PACKAGES += \
    Superuser \
    SysInfo

# Copy over the changelog to the device
#PRODUCT_COPY_FILES += \
#    vendor/lithium/CHANGELOG.mkdn:system/etc/CHANGELOG-CM.txt

# Common Lithium overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/lithium/overlay/common

# Bring in some audio files
include frameworks/base/data/sounds/AudioPackage4.mk

PRODUCT_COPY_FILES += \
     vendor/lithium/prebuilt/common/bin/jrummy16_script.sh:system/bin/jrummy16_script.sh \
     vendor/lithium/prebuilt/common/bin/sysinit.lithium:system/bin/sysinit.lithium \
     vendor/lithium/prebuilt/common/xbin/htop:system/xbin/htop \
     vendor/lithium/prebuilt/common/xbin/irssi:system/xbin/irssi \
     vendor/lithium/prebuilt/common/xbin/lsof:system/xbin/lsof \
     vendor/lithium/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
     vendor/lithium/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
     vendor/lithium/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
     vendor/lithium/prebuilt/common/etc/profile:system/etc/profile \
     vendor/lithium/prebuilt/common/etc/init.d/00_banner:system/etc/init.d/00_banner \
     vendor/lithium/prebuilt/common/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh \
     vendor/lithium/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
     vendor/lithium/prebuilt/common/etc/init.lithium.rc:system/etc/init.lithium.rc

#    vendor/lithium/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
#    vendor/lithium/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
#    vendor/lithium/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
#    vendor/lithium/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
#    vendor/lithium/prebuilt/common/etc/init.d/04modules:system/etc/init.d/04modules \
#    vendor/lithium/prebuilt/common/etc/init.d/20userinit:system/etc/init.d/20userinit \
#    vendor/lithium/prebuilt/common/xbin/powertop:system/xbin/powertop \

#PRODUCT_COPY_FILES += \
#    vendor/lithium/prebuilt/common/etc/init.d/05mountsd:system/etc/init.d/05mountsd \
#    vendor/lithium/prebuilt/common/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd

#PRODUCT_COPY_FILES +=  \
#    vendor/lithium/proprietary/RomManager.apk:system/app/RomManager.apk 

# Always run in insecure mode, enables root on user build variants
#ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

ifdef LITHIUM_WITH_GOOGLE
    PRODUCT_COPY_FILES += \
        vendor/lithium/proprietary/CarHomeGoogle.apk:./system/app/CarHomeGoogle.apk \
        vendor/lithium/proprietary/CarHomeLauncher.apk:./system/app/CarHomeLauncher.apk \
        vendor/lithium/proprietary/Facebook.apk:./system/app/Facebook.apk \
        vendor/lithium/proprietary/GenieWidget.apk:./system/app/GenieWidget.apk \
        vendor/lithium/proprietary/Gmail.apk:./system/app/Gmail.apk \
        vendor/lithium/proprietary/GoogleBackupTransport.apk:./system/app/GoogleBackupTransport.apk \
        vendor/lithium/proprietary/GoogleCalendarSyncAdapter.apk:./system/app/GoogleCalendarSyncAdapter.apk \
        vendor/lithium/proprietary/GoogleContactsSyncAdapter.apk:./system/app/GoogleContactsSyncAdapter.apk \
        vendor/lithium/proprietary/GoogleFeedback.apk:./system/app/GoogleFeedback.apk \
        vendor/lithium/proprietary/GooglePartnerSetup.apk:./system/app/GooglePartnerSetup.apk \
        vendor/lithium/proprietary/GoogleQuickSearchBox.apk:./system/app/GoogleQuickSearchBox.apk \
        vendor/lithium/proprietary/GoogleServicesFramework.apk:./system/app/GoogleServicesFramework.apk \
        vendor/lithium/proprietary/HtcCopyright.apk:./system/app/HtcCopyright.apk \
        vendor/lithium/proprietary/HtcEmailPolicy.apk:./system/app/HtcEmailPolicy.apk \
        vendor/lithium/proprietary/HtcSettings.apk:./system/app/HtcSettings.apk \
        vendor/lithium/proprietary/LatinImeTutorial.apk:./system/app/LatinImeTutorial.apk \
        vendor/lithium/proprietary/Maps.apk:./system/app/Maps.apk \
        vendor/lithium/proprietary/MarketUpdater.apk:./system/app/MarketUpdater.apk \
        vendor/lithium/proprietary/MediaUploader.apk:./system/app/MediaUploader.apk \
        vendor/lithium/proprietary/NetworkLocation.apk:./system/app/NetworkLocation.apk \
        vendor/lithium/proprietary/OneTimeInitializer.apk:./system/app/OneTimeInitializer.apk \
        vendor/lithium/proprietary/PassionQuickOffice.apk:./system/app/PassionQuickOffice.apk \
        vendor/lithium/proprietary/SetupWizard.apk:./system/app/SetupWizard.apk \
        vendor/lithium/proprietary/Street.apk:./system/app/Street.apk \
        vendor/lithium/proprietary/Talk.apk:./system/app/Talk.apk \
        vendor/lithium/proprietary/Twitter.apk:./system/app/Twitter.apk \
        vendor/lithium/proprietary/Vending.apk:./system/app/Vending.apk \
        vendor/lithium/proprietary/VoiceSearch.apk:./system/app/VoiceSearch.apk \
        vendor/lithium/proprietary/YouTube.apk:./system/app/YouTube.apk \
        vendor/lithium/proprietary/googlevoice.apk:./system/app/googlevoice.apk \
        vendor/lithium/proprietary/kickback.apk:./system/app/kickback.apk \
        vendor/lithium/proprietary/soundback.apk:./system/app/soundback.apk \
        vendor/lithium/proprietary/talkback.apk:./system/app/talkback.apk \
        vendor/lithium/proprietary/com.google.android.maps.xml:./system/etc/permissions/com.google.android.maps.xml \
        vendor/lithium/proprietary/features.xml:./system/etc/permissions/features.xml \
        vendor/lithium/proprietary/com.google.android.maps.jar:./system/framework/com.google.android.maps.jar \
        vendor/lithium/proprietary/libspeech.so:./system/lib/libspeech.so
        vendor/lithium/proprietary/libvoicesearch.so:./system/lib/libvoicesearch.so
else
    PRODUCT_PACKAGES += \
        Provision \
        QuickSearchBox
endif

PRODUCT_LOCALES := en_US en_GB fr_FR it_IT de_DE es_ES
