COMMENT =	web content scanner

DISTNAME =	dirb222
PKGNAME =	dirb-2.22

CATEGORIES =	security www

# GPLv2
PERMIT_PACKAGE =	Yes

SITES =		${SITE_SOURCEFORGE:=dirb/}

WANTLIB += c crypto curl nghttp2 ssl z

LIB_DEPENDS =		net/curl

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	LDFLAGS=-L${LOCALBASE}/lib

FIX_CRLF_FILES =	src/variables.h

post-extract:
	chmod -R 755 ${WRKSRC}

post-install:
	# Fix conflict with icu4c
	mv ${PREFIX}/bin/gendict ${PREFIX}/bin/dirb-gendict
	${INSTALL_DATA_DIR} ${PREFIX}/share/dirb/
	cd ${WRKSRC} && pax -rw wordlists ${PREFIX}/share/dirb/

.include <bsd.port.mk>
