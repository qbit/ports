COMMENT=		dockable program launcher

DISTNAME=		mterm-0.4.2b
CATEGORIES=		x11
REVISION=		1

HOMEPAGE=		https://mterm.sourceforge.net/

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xext Xpm c 

SITES=			${SITE_SOURCEFORGE:=mterm/}

NO_TEST=		Yes

ALL_TARGET=		mterm
MAKE_FLAGS=		CC="${CC}" FLAGS="${CFLAGS}" \
			INCLUDES="-I${X11BASE}/include" \
			LIB_DIRS="-L${X11BASE}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mterm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/mterm.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mterm
	${INSTALL_DATA} ${WRKSRC}/mtermrc.example \
		${PREFIX}/share/examples/mterm/dot.mtermrc

.include <bsd.port.mk>
