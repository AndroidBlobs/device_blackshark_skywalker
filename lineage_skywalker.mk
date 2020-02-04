# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from skywalker device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := blackshark
PRODUCT_DEVICE := skywalker
PRODUCT_MANUFACTURER := blackshark
PRODUCT_NAME := lineage_skywalker
PRODUCT_MODEL := skywalker

PRODUCT_GMS_CLIENTID_BASE := android-blackshark
TARGET_VENDOR := blackshark
TARGET_VENDOR_PRODUCT_NAME := skywalker
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="skywalker-user 10 SKYW1912210CN00DQX V11.0.4.0.JOYUI release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := blackshark/SKW-A0/skywalker:10/SKYW1912210CN00DQX/V11.0.0.0.QSKYWCN:user/release-keys
