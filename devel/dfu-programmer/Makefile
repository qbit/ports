COMMENT =		Device Firmware Update-based programmer for Atmel chips
DISTNAME =		dfu-programmer-0.7.2
CATEGORIES =		devel
HOMEPAGE =		http://dfu-programmer.github.io/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c usb-1.0

SITES =			${SITE_SOURCEFORGE:=dfu-programmer/}

LIB_DEPENDS =		devel/libusb1

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV+=		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${CFLAGS} -L${LOCALBASE}/lib"

.include <bsd.port.mk>
