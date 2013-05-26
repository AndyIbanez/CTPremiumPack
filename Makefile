ARCHS = armv7
include theos/makefiles/common.mk
BUNDLE_NAME = CTPremiumPack

SUBPROJECTS = CTDND CTWiFiToggle CTBluetoothToggle CTAirplaneMode

include theos/makefiles/aggregate.mk

include $(THEOS_MAKE_PATH)/bundle.mk