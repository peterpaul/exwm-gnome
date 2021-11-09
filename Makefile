#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)/usr

PATH_EXWM_GNOME = $(PREFIX)/bin/exwm-gnome
PATH_EXWM_GNOME_DESKTOP = $(PREFIX)/share/applications/exwm-gnome.desktop
PATH_EXWM_GNOME_SESSION = $(PREFIX)/share/gnome-session/sessions/exwm-gnome.session
PATH_EXWM_GNOME_XSESSION = $(PREFIX)/share/xsessions/exwm-gnome.desktop
PATH_GNOME_SESSION_EXWM = $(PREFIX)/bin/gnome-session-exwm

#
# Targets
#

all:
	@echo "Nothing to do"


install:
	$(INSTALL) -m0644 -D session/exwm-gnome-xsession.desktop $(PATH_EXWM_GNOME_XSESSION)
	$(INSTALL) -m0644 -D session/exwm-gnome.desktop $(PATH_EXWM_GNOME_DESKTOP)
	$(INSTALL) -m0644 -D session/exwm-gnome.session $(PATH_EXWM_GNOME_SESSION)
	$(INSTALL) -m0755 -D session/exwm-gnome $(PATH_EXWM_GNOME)
	$(INSTALL) -m0755 -D session/gnome-session-exwm $(PATH_GNOME_SESSION_EXWM)



uninstall:
	rm -f $(PATH_EXWM_GNOME)
	rm -f $(PATH_EXWM_GNOME_DESKTOP)
	rm -f $(PATH_EXWM_GNOME_SESSION)
	rm -f $(PATH_EXWM_GNOME_XSESSION)
	rm -f $(PATH_GNOME_SESSION_EXWM)



.PHONY: all install uninstall
