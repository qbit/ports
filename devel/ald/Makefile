ONLY_FOR_ARCHS=		i386

COMMENT=		assembly language debugger

DISTNAME=		ald-0.1.7
CATEGORIES=		devel
REVISION=		1

HOMEPAGE=		https://ald.sourceforge.net/

MAINTAINER=		Patrick Alken <alken@colorado.edu>

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += c curses readline

SITES=			${SITE_SOURCEFORGE:=ald/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-gtk
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/autoconf \
				${WRKSRC}/libDASM/autoconf \
				${WRKSRC}/libDebug/autoconf

NO_TEST=             Yes

.include <bsd.port.mk>
