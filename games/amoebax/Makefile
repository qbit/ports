COMMENT=	cute and addictive action-puzzle game

DISTNAME= 	amoebax-0.2.1
REVISION=       4

CATEGORIES=	games
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.emma-soft.com/games/amoebax/

SITES=		${HOMEPAGE}download/

# GPL/LAL
PERMIT_PACKAGE=	Yes

WANTLIB=	SDL c m pthread ${COMPILER_LIBCXX} SDL_image SDL_mixer

COMPILER =		base-clang ports-gcc base-gcc
CXXFLAGS_base-clang =	-std=gnu++14

LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer

RUN_DEPENDS=	devel/desktop-file-utils

CONFIGURE_STYLE=gnu


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/amoebax
	${INSTALL_DATA} ${WRKSRC}/doc/manual.pdf ${PREFIX}/share/doc/amoebax

.include <bsd.port.mk>
