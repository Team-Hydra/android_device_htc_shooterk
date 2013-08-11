# Camera
PRODUCT_PACKAGES := \
    Camera

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/cdma.mk)

# Inherit device configuration
$(call inherit-product, device/htc/shooterk/shooterk.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_shooterk BUILD_FINGERPRINT="KDDI/HTI12/shooterk:4.0.3/IML74K/447280.7:user/release-keys" PRIVATE_BUILD_DESC="2.29.970.7 CL447280 release-keys"

# Device naming
PRODUCT_DEVICE := shooterk
PRODUCT_NAME := cm_shooterk
PRODUCT_BRAND := KDDI
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := ISW12HT

# Bootanimation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Release name
PRODUCT_RELEASE_NAME := shooterk
-include vendor/cm/config/common_versions.mk
