include $(TOPDIR)/rules.mk

PKG_NAME:=tinyfecvpn
PKG_VERSION:=20180803
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/wangyu-/tinyfecVPN.git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_VERSION:=55757c6f4915af7dcfeddc9b63be5c7d579998cd

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/tinyfecvpn
	SECTION:=net
	CATEGORY:=Network
	SUBMENU:=VPN
	TITLE:=A VPN Designed for Lossy Links, with Build-in Forward Error Correction(FEC) Support.
	URL:=https://github.com/wangyu-/tinyfecVPN
	DEPENDS:=+libstdcpp +kmod-tun
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	$(CP) ./files/Makefile $(PKG_BUILD_DIR)/makefile
	echo const char \* const gitversion = \"$(PKG_SOURCE_VERSION)\"\; > $(PKG_BUILD_DIR)/git_version.h
endef

define Package/tinyfecvpn/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/tinyfecvpn $(1)/usr/bin
endef

$(eval $(call BuildPackage,tinyfecvpn))
