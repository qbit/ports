COMMENT=		WindowMaker dock.app clock
BROKEN-sparc64 =	ICE in change_address_1, at emit-rtl.c:1784

DISTNAME=		wmclockmon-0.8.1
CATEGORIES=		x11 x11/windowmaker
REVISION=		1

HOMEPAGE=		http://tnemeth.free.fr/projets/dockapps.html

SITES=			http://tnemeth.free.fr/projets/programmes/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xpm Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 harfbuzz intl pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread z

LIB_DEPENDS=		devel/gettext,-runtime \
			x11/gtk+2

USE_GROFF =		Yes
NO_TEST=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
