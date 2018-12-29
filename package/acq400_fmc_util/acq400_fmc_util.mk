################################################################################
#
# acq400_fmc_util
#
################################################################################

ACQ400_FMC_UTIL_VERSION = 1.0
ACQ400_FMC_UTIL_SITE = ../ACQ400/TOOLS/fmc-bus-2013-05-release/tools
ACQ400_FMC_UTIL_SITE_METHOD = local
ACQ400_FMC_UTIL_INSTALL_STAGING = YES

define ACQ400_FMC_UTIL_BUILD_CMDS
	echo BUILD ACQ400_FMC_UTIL
	$(MAKE) CC="$(TARGET_CC)" CXX="$(TARGET_CXX)" LD="$(TARGET_LD)" -C $(@D) all
endef

define ACQ400_FMC_UTIL_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/fru-dump-acq $(TARGET_DIR)/bin
endef

$(eval $(generic-package))


