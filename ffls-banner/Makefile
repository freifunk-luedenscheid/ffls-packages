include $(TOPDIR)/rules.mk

PKG_NAME:=ffls-banner
PKG_VERSION:=1
PKG_RELEASE:=$(GLUON_VERSION).$(GLUON_SITE_CODE)-$(GLUON_RELEASE).$(GLUON_CONFIG_VERSION)

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/ffls-banner
  SECTION:=ffls
  CATEGORY:=FFLS
  TITLE:=Banner file replacement
  DEPENDS:=+gluon-core +busybox
  MAINTAINER:=AKA-47
  URL:=https://github.com/AKA-47/fflued-packages
endef

define Package/ffls-banner/description
	Banner file replacement
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/ffls-banner/preinst
#!/bin/sh
cd "$${IPKG_INSTROOT}/etc/"
if [ -h "./banner" ] ; then
	/bin/rm "./banner"
elif [ -f "./banner" ] ; then
	/bin/mv "./banner" "./banner.openwrt"
fi
/bin/ln -s "./banner.openwrt" "./banner"
exit 0
endef

define Package/ffls-banner/postinst
#!/bin/sh
cd "$${IPKG_INSTROOT}/etc/"
[ -h "./banner" ] && /bin/rm -f "./banner"
/bin/ln -s "./banner.ffls" "./banner"
exit $$?
endef

define Package/ffls-banner/prerm
#!/bin/sh
cd "$${IPKG_INSTROOT}/etc/"
if [ -h "./banner" ] ; then
	[[ "$$(readlink -n ./banner)" == "./banner.ffls" ]] && \
	/bin/rm -f "./banner" && \
	[ -f "./banner.openwrt" ] && \
	/bin/ln -s "./banner.openwrt" "./banner"
fi
exit 0
endef

define Package/ffls-banner/install
	$(INSTALL_DIR) $(1)/etc/
	$(INSTALL_DATA) ./files/etc/banner.ffls $(1)/etc/
endef

$(eval $(call BuildPackage,ffls-banner))
