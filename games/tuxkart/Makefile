COMMENT =	tuxkart is a simple Go-Kart racing game.

DISTNAME =	tuxkart-0.4.0
REVISION =	7
CATEGORIES =	games

HOMEPAGE =	https://tuxkart.sourceforge.net/
SITES =		${HOMEPAGE}/dist/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		GL ICE SM X11 Xext Xi Xmu c m pthread \
			sndio ${COMPILER_LIBCXX} xcb

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS =		devel/plib

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include \
				-I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lsndio"

.include <bsd.port.mk>
