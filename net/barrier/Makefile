# $OpenBSD: Makefile,v 1.1.1.1 2020/01/31 23:32:54 abieber Exp $

COMMENT =		mouse and keyboard sharing utility

V =			2.3.3
DISTNAME =		barrier-${V}-release
PKGNAME =		barrier-${V}
CATEGORIES =		net x11

DISTFILES =		googlemock-release-1.7.0.tar.gz:0 \
			googletest-release-1.6.0.tar.gz:0 \
			${DISTNAME}${EXTRACT_SUFX}

MASTER_SITES0 =		https://deftly.net/dist/
MASTER_SITES =		https://github.com/debauchee/barrier/releases/download/v${V}/

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += ICE Qt5Core Qt5Gui Qt5Network Qt5Widgets SM X11 Xext
WANTLIB += Xi Xinerama Xrandr Xtst c crypto curl dns_sd m pthread
WANTLIB += ssl

COMPILER =		base-gcc ports-gcc

LIB_DEPENDS =		net/curl \
			net/avahi

MODULES =		devel/cmake \
			x11/qt5

MAKE_ARGS =		CFLAGS=${CFLAGS} LDFLAGS=${LDFLAGS}

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/build-*/bin/barrier* ${PREFIX}/bin/
	mv ${PREFIX}/bin/barrier ${PREFIX}/bin/barrier-gui
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/barrier
	${INSTALL_DATA} ${WRKSRC}/doc/barrier.conf.exampl* \
		${PREFIX}/share/examples/barrier/
	${INSTALL_MAN} ${WRKSRC}/doc/barrierc.1 \
		${PREFIX}/man/man1/barrierc.1
	${INSTALL_MAN} ${WRKSRC}/doc/barriers.1 \
		${PREFIX}/man/man1/barriers.1

.include <bsd.port.mk>
