################################################################################
#
# DESMUME
#
################################################################################
# Version.: Commits on Apr 16, 2018
LIBRETRO_DESMUME_VERSION = 9fb1e8c1f4ccd819f15b29e2114a05e45140fec0
LIBRETRO_DESMUME_SITE = $(call github,libretro,desmume,$(LIBRETRO_DESMUME_VERSION))

define LIBRETRO_DESMUME_BUILD_CMDS
	CFLAGS="$(TARGET_CFLAGS)" CXXFLAGS="$(TARGET_CXXFLAGS)" \
        $(MAKE) CXX="$(TARGET_CXX)" CC="$(TARGET_CC)" LD="$(TARGET_CXX)" RANLIB="$(TARGET_RANLIB)" AR="$(TARGET_AR)" -C $(@D)/desmume/src/frontend/libretro -f Makefile platform="$(LIBRETRO_PLATFORM)"
endef

define LIBRETRO_DESMUME_INSTALL_TARGET_CMDS
	$(INSTALL) -D $(@D)/desmume/src/frontend/libretro/desmume_libretro.so \
		$(TARGET_DIR)/usr/lib/libretro/desmume_libretro.so
endef

$(eval $(generic-package))
