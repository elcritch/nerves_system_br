################################################################################
#
# raspijpgs
#
################################################################################

ZEROTIER_ONE_VERSION = ae491c277e6f35d1acbdcbf700e2b834957295ae
ZEROTIER_ONE_SITE = $(call github,zerotier,ZeroTierOne,$(ZEROTIER_ONE_VERSION))
ZEROTIER_ONE_LICENSE = GPL-2
ZEROTIER_ONE_LICENSE_FILES = LICENSE.GPL-2

define ZEROTIER_ONE_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) VC_DIR=$(STAGING_DIR)/usr -C $(@D)
endef

define ZEROTIER_ONE_INSTALL_TARGET_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) INSTALL_PREFIX=$(TARGET_DIR)/usr -C $(@D) install
endef

$(eval $(generic-package))
