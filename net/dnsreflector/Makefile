COMMENT=		DNS queries reflector

DISTNAME=		dnsreflector-1.03
CATEGORIES=		net sysutils
REVISION=		0

HOMEPAGE=		http://www.wolfermann.org/dnsreflector.html

SITES=			http://www.wolfermann.org/

# BSD
PERMIT_PACKAGE=	Yes
WANTLIB=		c

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dnsreflector ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/dnsreflector.1 ${PREFIX}/man/man1 

.include <bsd.port.mk>
