COMMENT=	MPEG video player library with sound support

DISTNAME=	smpeg-0.4.4
REVISION=	17
CATEGORIES=	devel graphics
SITES=		https://distfiles.sigtrap.nl/

SHARED_LIBS=	smpeg	2.0

HOMEPAGE=	http://icculus.org/smpeg/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	SDL c iconv m pthread sndio ${COMPILER_LIBCXX} usbhid

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	converters/libiconv \
		devel/sdl

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-opengl-player \
		 --disable-gtk-player
CONFIGURE_ENV+=  LDFLAGS="-L${X11BASE}/lib"

post-install:
	${INSTALL_MAN} ${FILESDIR}/smpeg.3 ${PREFIX}/man/man3

.include <bsd.port.mk>
