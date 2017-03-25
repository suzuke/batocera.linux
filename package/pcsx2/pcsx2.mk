################################################################################
#
# PCSX2
#
################################################################################

#PCSX2_VERSION = v1.4.0
PCSX2_VERSION = 6d6ed1a20555fc5578a132b63efca96fa2455070
PCSX2_SITE = $(call github,pcsx2,pcsx2,$(PCSX2_VERSION))
PCSX2_DEPENDENCIES = xserver_xorg-server alsa-lib freetype zlib libpng wxwidgets libaio portaudio libsoundtouch sdl2


$(eval $(cmake-package))
