################################################################################
# 
# acq400_procServ
#
################################################################################

ACQ400_PROCSERV_VERSION = 2.7.0
#ACQ400_PROCSERV_SOURCE = procServ-$(ACQ400_PROCSERV_VERSION).tar.gz
ACQ400_PROCSERV_SITE = $(call github,ralphlange,procServ,V$(ACQ400_PROCSERV_VERSION))
#ACQ400_PROCSERV_SITE_METHOD = local
ACQ400_PROCSERV_AUTORECONF = YES
ACQ400_PROCSERV_INSTALL_STAGING = YES


$(eval $(autotools-package))
