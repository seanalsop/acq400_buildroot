################################################################################
#
# acq400_util
#
################################################################################

ACQ400_UTIL_VERSION = 1.0
ACQ400_UTIL_SITE = ../ACQ400/UTILS
ACQ400_UTIL_SITE_METHOD = local
ACQ400_UTIL_INSTALL_STAGING = YES

define ACQ400_UTIL_BUILD_CMDS
	echo HELLO WORLD PGMWASHERE
	$(MAKE) CC="$(TARGET_CC)" CXX="$(TARGET_CXX)" LD="$(TARGET_LD)" -C $(@D) all
endef

define ACQ400_UTIL_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/fs2xml $(TARGET_DIR)/bin
	$(INSTALL) -D -m 0755 $(@D)/ob_calc_527 $(TARGET_DIR)/bin
	$(INSTALL) -D -m 0755 $(@D)/daemon $(TARGET_DIR)/bin
	$(INSTALL) -D -m 0755 $(@D)/xiloader $(TARGET_DIR)/bin
endef

$(eval $(generic-package))
