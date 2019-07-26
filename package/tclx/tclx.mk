################################################################################
# 
# tclx
#
################################################################################

TCLX_VERSION = v8.4.2
TCLX_SITE = $(call github,flightaware,tclx,$(TCLX_VERSION))
TCLX_LICENSE = BSD
TCLX_LICENSE_FILES = license.terms
TCLX_DEPENDENCIES = tcl

TCLX_AUTORECONF = NO
TCLX_INSTALL_STAGING = YES
TCLX_CONF_OPTS = --target=arm-linux-gnueabihf --with-tcl=$(BUILD_DIR)/tcl-$(TCL_VERSION)/unix
TCLX_INSTALL_TARGET_OPTS = DESTDIR=$(TARGET_DIR) install

$(eval $(autotools-package))

