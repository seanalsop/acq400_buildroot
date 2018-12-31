################################################################################
# 
# ckermit
#
################################################################################

CKERMIT_VERSION = 9.0.304
CKERMIT_SOURCE = cku304-dev22.tar.gz
CKERMIT_SITE = http://www.kermitproject.org/ftp/kermit/test/tar
CKERMIT_STRIP_COMPONENTS = 0
CKERMIT_INSTALL_STAGING = YES

define CKERMIT_BUILD_CMDS
	echo PGMWASHERE CKERMIT
	$(MAKE) CC=gcc -C $(@D) wart
	$(MAKE) xermit CC="$(TARGET_CC)" CC2="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D) \
	 KTARGET=${KTARGET:-linuxa} \
	"CFLAGS = -O -DLINUX -pipe -funsigned-char -DFNFLOAT -DCK_POSIX_SIG \
	-DCK_NEWTERM -DTCPSOCKET -DLINUXFSSTND -DNOCOTFMC -DPOSIX \
	-DUSE_STRERROR -DCK_NCURSES  -I$(STAGING_DIR)/usr/include/ncurses -DHAVE_PTMX  -DHAVE_CRYPT_H  \
	-DHAVE_OPENPTY -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 " "LNKFLAGS = " \
	"LIBS = -lutil   -lncurses -lresolv -lcrypt  -lm"
endef

define CKERMIT_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/wermit $(TARGET_DIR)/usr/bin/kermit
endef


$(eval $(generic-package))

