COMMENT =		simple background setter

VERSION =		0.8
DISTNAME =		${GH_PROJECT}-${VERSION}
REVISION =		0
CATEGORIES =		x11 graphics

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# MIT/X
PERMIT_PACKAGE =	Yes

WANTLIB =		X11 Xinerama c Imlib2 m

GH_ACCOUNT =		Gottox
GH_PROJECT =		bgs
GH_TAGNAME =		v${VERSION}

LIB_DEPENDS =		graphics/imlib2

NO_TEST =		Yes
SUBST_VARS =		VERSION

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/bgs.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bgs ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bgs.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
