# modified generic config

$(call inherit-product, vendor/lithium/products/lithium_core.mk)

PRODUCT_NAME := lithium_generic
PRODUCT_BRAND := lithium
PRODUCT_DEVICE :=

PRODUCT_PACKAGES += \
    AccountAndSyncSettings \
    CarHome \
    DeskClock \
    AlarmProvider \
    Bluetooth \
    Calculator \
    Calendar \
    Camera \
    CertInstaller \
    DrmProvider \
    Email \
    Gallery3D \
    LatinIME \
    Launcher2 \
    Mms \
    Music \
    Protips \
    Settings \
    Sync \
    Updater \
    CalendarProvider \
    SyncProvider
# The below were removed from the list above
# Provision \
# LatinIME \
# QuickSearchBox \

# end of modified generic config
