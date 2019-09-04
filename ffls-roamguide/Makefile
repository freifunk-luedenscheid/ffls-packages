include $(TOPDIR)/rules.mk

PKG_NAME:=ffls-roamguide
PKG_VERSION:=0.0.3
PKG_RELEASE:=$(GLUON_BRANCH)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffls-roamguide
  SECTION:=net
  CATEGORY:=Network
  DEPENDS:=+micrond
  TITLE:=Helps your client to search for a better AP and have a nice roam experience.
endef

define Package/ffls-roamguide/description
	Helps your client to search for a better AP and have a nice roam experience.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Compile
endef

define Package/ffls-roamguide/install
	$(CP) ./files/* $(1)
endef

$(eval $(call BuildPackage,ffls-roamguide))
