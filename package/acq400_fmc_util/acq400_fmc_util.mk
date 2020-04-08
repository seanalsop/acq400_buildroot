################################################################################
#
# acq400_fmc_util
#
################################################################################

ACQ400_FMC_UTIL_VERSION = 1.1
ACQ400_FMC_UTIL_SITE = $(call github,petermilne,fmctools,V$(ACQ400_FMC_UTIL_VERSION))
#ACQ400_FMC_UTIL_SITE_METHOD = local
ACQ400_FMC_UTIL_INSTALL_STAGING = YES

define ACQ400_FMC_UTIL_BUILD_CMDS
	echo BUILD ACQ400_FMC_UTIL
	$(MAKE) CC="$(TARGET_CC)" CXX="$(TARGET_CXX)" LD="$(TARGET_LD)" -C $(@D) all
endef

define ACQ400_FMC_UTIL_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/tools/fru-dump-acq $(TARGET_DIR)/bin
endef

$(eval $(generic-package))


