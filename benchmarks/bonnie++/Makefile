COMMENT=	enhanced performance test of filesystem I/O

DISTNAME=	bonnie++-1.97.3
CATEGORIES=	benchmarks
SITES=		http://www.coker.com.au/bonnie++/experimental/
EXTRACT_SUFX=	.tgz
REVISION=	1

HOMEPAGE=	http://www.coker.com.au/bonnie++/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

CXXFLAGS_base-clang =	-std=c++14
MAKE_ENV +=		CXXFLAGS="${CXXFLAGS}"

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf dest
AUTOCONF_VERSION= 2.67

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bonnie++
	${INSTALL_DATA} ${WRKSRC}/readme.html \
		${PREFIX}/share/doc/bonnie++

.include <bsd.port.mk>
