COMMENT=	tempo/pitch audio processing library

DISTNAME=	soundtouch-1.3.1
SITES=		${HOMEPAGE}
WANTLIB=	c m ${COMPILER_LIBCXX}

AUTOCONF_VERSION=2.61
AUTOMAKE_VERSION=1.9

   AUTOCONF_VERSION = 2.61

# make sure portcheck doesn't count those AUTOMAKE_VERSION as assignments
CONFIGURE_ENV=	\
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

MAKE_FLAGS=	\
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

.include <bsd.port.mk>
