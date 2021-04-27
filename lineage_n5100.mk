# Release name
PRODUCT_RELEASE_NAME := n5100

# Inherit device configuration
$(call inherit-product, device/samsung/smdk4412-common/common.mk)
$(call inherit-product, device/samsung/kona-common/kona-common.mk)
$(call inherit-product, device/samsung/n5100/n5100.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 600

# Inherit some common stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n5100
PRODUCT_NAME := lineage_n5100
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-N5100
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
		PRODUCT_NAME=kona3gxx \
		TARGET_DEVICE=kona3g \
		PRIVATE_BUILD_DESC="kona3gxx-user 4.4.2 KOT49H N5100XXSDQA2 release-keys"

BUILD_FINGERPRINT := samsung/kona3gxx/kona3g:4.4.2/KOT49H/N5100XXSDQA2:user/release-keys