COMMENT =		reorder separable/discontinuous multiwords

V =			0.6.1
DISTNAME =		apertium-separable-$V
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://www.apertium.org/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# GPLv2+
PERMIT_PACKAGE =	Yes

# uses pledge()

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += c icudata icui18n icuio icuuc lttoolbox m xml2

SITES =	https://github.com/apertium/apertium-separable/releases/download/v$V/

EXTRACT_SUFX =		.tar.bz2

# c++20
COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/utfcpp
LIB_DEPENDS =		textproc/icu4c \
			textproc/lttoolbox

USE_GMAKE =		Yes

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/utf8cpp" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
