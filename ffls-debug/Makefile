include $(TOPDIR)/rules.mk

PKG_NAME:=ffls-debug
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffls-debug
  SECTION:=ffls
  CATEGORY:=ffls
  TITLE:=Debug scripts
  DEPENDS:=+gluon-core +ubus +libubox +busybox
  MAINTAINER:=AKA-47
endef

define Package/ffls-debug/description
	Debug scripts for ffls
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffls-debug/install
	$(INSTALL_DIR) $(1)/bin/
	$(INSTALL_BIN) ./files/bin/* $(1)/bin/
endef

$(eval $(call BuildPackage,ffls-debug))
