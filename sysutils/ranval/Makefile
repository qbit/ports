COMMENT =		generate random numbers

DISTNAME =		ranval-1.4
CATEGORIES =		sysutils

HOMEPAGE =		http://www.weirdnet.nl/openbsd/code/ranval/
SITES =			${HOMEPAGE}

MAINTAINER =		Paul de Weerd <weerd@weirdnet.nl>

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		c

NO_TEST =		Yes

FAKE_FLAGS =		BINDIR="${PREFIX}/bin" MANDIR="${PREFIX}/man/man"

.include <bsd.port.mk>
