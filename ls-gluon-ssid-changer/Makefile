include $(TOPDIR)/rules.mk

PKG_NAME:=ls-gluon-ssid-changer
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ls-gluon-ssid-changer
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=LUED SSID Changer
  DEPENDS:=+gluon-core +micrond
endef

define Build/Prepare
        mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ls-gluon-ssid-changer/install
        $(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,ls-gluon-ssid-changer))

