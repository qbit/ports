COMMENT =		library for decoding mod-like music formats

DISTNAME =		libmodplug-0.8.9.0
CATEGORIES =		audio
REVISION =		1

HOMEPAGE =		https://modplug-xmms.sourceforge.net/

SHARED_LIBS +=          modplug         1.0     # 1.0

# Public domain
PERMIT_PACKAGE = Yes

SITES =			${SITE_SOURCEFORGE:=modplug-xmms/}

WANTLIB +=		m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

NO_TEST =		Yes

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
