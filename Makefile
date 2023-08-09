TARGET := iphone:7.0:2.0
ARCHS := armv6 arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoBlackVueDisclaimer
NoBlackVueDisclaimer_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 BlackVue"
