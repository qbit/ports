COMMENT=	buffer sporadic I/O for faster tape and pipe throughput

DISTNAME=	buffer-1.17.1
REVISION=	1
CATEGORIES=	misc

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		c

SITES=		${SITE_FREEBSD_LOCAL:=steve/}
EXTRACT_SUFX=	.tar.bz2

MAKE_ENV=	CC="${CC}"

WRKDIST=	${WRKDIR}

NO_TEST=	Yes

.include <bsd.port.mk>
