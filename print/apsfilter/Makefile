COMMENT=		filter to print a wide range of file formats

DISTNAME=		apsfilter-7.2.8
REVISION=		6
CATEGORIES=		print

HOMEPAGE=		http://www.apsfilter.org/

# GPLv2
PERMIT_PACKAGE=	Yes

SITES=			http://www.apsfilter.org/download/

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--prefix='${PREFIX}' \
			--sysconfdir='${SYSCONFDIR}' \
			--with-shell=/bin/sh \
			--with-awk=/usr/bin/awk

RUN_DEPENDS=		print/a2ps

WRKDIST=		${WRKDIR}/apsfilter

NO_TEST=		Yes

.include <bsd.port.mk>
