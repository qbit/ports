COMMENT=	GTK+2 front-end for command line archiving tools

V=		0.2.8-6
DISTNAME=	xarchive-$V
PKGNAME=	xarchive-${V:S/-/./}
REVISION=	10
CATEGORIES=	x11

HOMEPAGE=	https://xarchive.sourceforge.net/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += harfbuzz intl pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z

SITES=		${SITE_SOURCEFORGE:=xarchive/}

LIB_DEPENDS=	devel/gettext,-runtime \
		x11/gtk+2
RUN_DEPENDS=	devel/desktop-file-utils


CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	BASH_PROG=/bin/sh

pre-configure:
	@perl -pi -e 's,AWK_PROGS="mawk gawk awk",AWK_PROGS="awk gawk mawk",g' \
		${WRKSRC}/wrappers/*.src
	${SUBST_CMD} ${WRKSRC}/doc/xarchive.1 \
		${WRKSRC}/doc/xarchive.1.txt.src

.include <bsd.port.mk>
