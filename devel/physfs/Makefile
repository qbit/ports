COMMENT=	library to provide abstract access to various archives

DISTNAME=	physfs-3.0.2
REVISION=	0
CATEGORIES=	devel
SITES=		${HOMEPAGE}downloads/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	physfs		3.0

HOMEPAGE=	https://icculus.org/physfs/
MAINTAINER=	Thomas Frohwein <thfr@openbsd.org>

# ZLib
PERMIT_PACKAGE=	Yes

WANTLIB=	c curses pthread readline z

MODULES=	devel/cmake

NO_TEST=	Yes

.include <bsd.port.mk>
