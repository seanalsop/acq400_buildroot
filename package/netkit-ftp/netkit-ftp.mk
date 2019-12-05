################################################################################
# 
# netkit-ftp
#
################################################################################

NETKIT_FTP_VERSION = 0.17
NETKIT_FTP_SITE = $(call github,petermilne,netkit-ftp,V$(NETKIT_FTP_VERSION))
NETKIT_FTP_INSTALL_STAGING = YES

define NETKIT_FTP_BUILD_CMDS
    cd $(@D); ./configure
    $(MAKE) CC="$(TARGET_CC)" CXX="$(TARGET_CXX)" LD="$(TARGET_LD)" -C $(@D) all
endef

define NETKIT_FTP_INSTALL_TARGET_CMDS
        $(INSTALL) -D -m 0755 $(@D)/ftp/ftp $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))

