# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Include Pure Nexus telephony configuration
include vendor/screwd/main.mk

# Inherit device configuration
$(call inherit-product, device/motorola/clark/aosp_clark.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/clark/overlay

## Device identifier. This must come after all inclusions
PRODUCT_NAME := screwd_clark
PRODUCT_BRAND := motorola
PRODUCT_MODEL := XT1570

PRODUCT_PROPERTY_OVERRIDES +=\
    ro.product.device=clark

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="Moto X Style"

