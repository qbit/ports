COMMENT=	clone of mpg123, a command-line mp3 player

VERSION=	0.3.2
PKGNAME=	mpg321-${VERSION}
REVISION=	3
CATEGORIES=	audio
HOMEPAGE=	https://mpg321.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

SITES=		${SITE_SOURCEFORGE:=mpg321/}
DISTFILES=	mpg321_${VERSION}.orig.tar.gz

WANTLIB=	ao c id3tag m mad pthread z
LIB_DEPENDS=	audio/libao \
		audio/libid3tag \
		audio/libmad

WRKDIST=	${WRKDIR}/mpg321-${VERSION}-orig
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-mpg123-symlink \
		--disable-alsa
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
