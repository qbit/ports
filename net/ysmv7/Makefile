COMMENT=		ICQ console client with encryption support

DISTNAME=		ysmv7_2_9_9_1
PKGNAME=		${DISTNAME:S/_/-/:S/_/./g}
CATEGORIES=		net
REVISION=		3

HOMEPAGE=		https://ysmv7.sourceforge.net/

SITES=			${SITE_SOURCEFORGE:=ysmv7/}

LIB_DEPENDS=		converters/libiconv

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += c curses iconv pthread readline

FIX_CRLF_FILES=		src/man/ysm.1

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=		Yes

.include <bsd.port.mk>
