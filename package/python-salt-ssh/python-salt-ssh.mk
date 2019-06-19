################################################################################
#
# python-python-salt-ssh
#
################################################################################

PYTHON_SALT_SSH_VERSION = 2019.2.0
PYTHON_SALT_SSH_SOURCE = salt-ssh-$(PYTHON_SALT_SSH_VERSION).tar.gz
PYTHON_SALT_SSH_SITE = https://files.pythonhosted.org/packages/21/90/81c013b3ea20c5bfe28ab249fcbb47c5638ae8a695740d4ca8550439a9ab
PYTHON_SALT_SSH_LICENSE = Apache Software License 2.0
PYTHON_SALT_SSH_LICENSE_FILES = LICENSE
PYTHON_SALT_SSH_ENV = 
PYTHON_SALT_SSH_DEPENDENCIES = 
PYTHON_SALT_SSH_SETUP_TYPE = distutils

$(eval $(python-package))
