COMMENT=	opensource Napster(tm) server

DISTNAME=	opennap-0.44
REVISION=	5
CATEGORIES=	audio net
SITES=		${SITE_SOURCEFORGE:=opennap/}

HOMEPAGE=	https://opennap.sourceforge.net/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=		c z

FIX_CRLF_FILES=	metaserver.dsp

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-email \
		--enable-resume \
		--datadir=${SYSCONFDIR} \
		--with-uid=_opennap \
		--with-gid=_opennap
#		--enable-chroot \  (breaks uid, gid, and ip lookup)

DOCS=	FAQ README manual.html napster.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/opennap
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opennap
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/opennap
	${INSTALL_DATA} ${WRKSRC}/sample.* ${PREFIX}/share/examples/opennap

.include <bsd.port.mk>
