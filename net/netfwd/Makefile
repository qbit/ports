COMMENT=	netword traffic redirector

DISTNAME=	netfwd-0.4
REVISION=	1
CATEGORIES=	net

MAINTAINER=	Alexey Vatchenko <av@bsdua.org>

HOMEPAGE=	http://www.bsdua.org/netfwd.html

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB=	c

SITES=		http://www.bsdua.org/files/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/netfwd ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/netfwd.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
