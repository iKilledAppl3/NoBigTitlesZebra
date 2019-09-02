ARCHS = arm64 arm64e
SDK = iPhoneOS12.4
THEOS_DEVICE_IP = 192.168.1.253
FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoBigTitlesZebra
NoBigTitlesZebra_FILES = Tweak.xm
NoBigTitlesZebra_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"

