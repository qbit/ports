COMMENT =	interface to the Skein digest algorithm

DISTNAME =	Digest-Skein-0.05
CATEGORIES =	security
FIX_EXTRACT_PERMISSIONS=Yes

REVISION =	4

HOMEPAGE =	http://www.skein-hash.info/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

FIX_CRLF_FILES =	Optimized_64bit/brg_endian.h

MODULES =	cpan

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mle}
BO=	LITTLE
.else
BO=	BIG
.endif

pre-configure:
	@perl -pi -e 's,!!ENDIAN!!,IS_${BO}_ENDIAN,g' \
		${WRKSRC}/Optimized_64bit/brg_endian.h

.include <bsd.port.mk>
