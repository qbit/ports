COMMENT=		SNMP audit scanner

DISTNAME=       	ADMsnmp.0.1
PKGNAME=		ADMsnmp-0.1
REVISION =		1
CATEGORIES=		security
EXTRACT_SUFX=		.tgz

PERMIT_PACKAGE=		no license
PERMIT_DISTFILES=	no license
WANTLIB=		c

SITES=			ftp://adm.freelsd.net/pub/ADM/ \
			http://adm.freelsd.net/ADM/ \
			${SITE_PACKETSTORM:=groups/ADM/}

WRKDIST=		${WRKDIR}/ADMsnmp

NO_TEST=		Yes

do-build:
	cd ${WRKSRC} ; ${CC} ${CFLAGS} \
		-DPORTSHAREDIR="${TRUEPREFIX}/share/ADMsnmp" \
		-o ADMsnmp snmp.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ADMsnmp ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/ADMsnmp
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ADMsnmp
	${INSTALL_DATA} ${WRKSRC}/snmp.passwd ${PREFIX}/share/ADMsnmp
	${INSTALL_DATA} ${WRKSRC}/ADMsnmp.README ${PREFIX}/share/doc/ADMsnmp

.include <bsd.port.mk>
