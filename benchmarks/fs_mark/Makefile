COMMENT =		test synchronous write workloads
DISTNAME =		fs_mark-3.3
REVISION =		2
CATEGORIES =		benchmarks
HOMEPAGE =		https://sourceforge.net/projects/fsmark/
# GPLv2+
PERMIT_PACKAGE =	Yes
WANTLIB =		c
SITES =			${SITE_SOURCEFORGE:=fsmark/}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fs_mark ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fs_mark
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/fs_mark/

NO_TEST =		Yes

.include <bsd.port.mk>
