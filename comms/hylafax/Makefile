COMMENT=		send/receive faxes and share modems
DISTNAME=		hylafax-6.0.6
REVISION=		16
CATEGORIES=		comms
BROKEN=			abandonware, uses binaries removed in tiff 4.6

HOMEPAGE=		https://www.HylaFAX.org/

SITES=			http://ftp.hylafax.org/source/ \
			ftp://ftp.hylafax.org/source/ \
			ftp://ftp.ntua.gr/pub/net/hylafax/source/ \
			http://mirror.aarnet.edu.au/pub/hylafax/source/

# License: BSD
# http://www.hylafax.org/HylaFAQ/copyright.html
PERMIT_PACKAGE=	Yes

FLAVORS=		a4
FLAVOR?=

WANTLIB=		c iconv intl jbig m ${COMPILER_LIBCXX} tiff util z

COMPILER=		base-clang ports-gcc base-gcc

BUILD_DEPENDS=		print/ghostscript/gnu
RUN_DEPENDS=		print/ghostscript/gnu \
			mail/metamail
LIB_DEPENDS=		graphics/jbigkit \
			graphics/tiff

CONFIGURE_STYLE=	simple
USE_GMAKE=		Yes

CONFIGURE_ARGS=		--nointeractive \
			--disable-pam \
			--disable-nls \
			--with-CC="${CC}" \
			--with-CXX="${CXX}" \
			--with-INSTALL="" \
			--with-OPTIMIZER=""

CONFIGURE_ENV+=		CCOMPILER="${CC}" CXXCOMPILER="${CXX}" \
			GCOPTS="${CFLAGS}" GCXXOPTS="${CXXFLAGS}" \
			PREFIX="${PREFIX}" LOCALBASE="${LOCALBASE}" \
			DIR_LIBDATA=${TRUEPREFIX}/libdata/hylafax/etc \
			INETDCONF=/etc/inetd.conf MKFIFO=/sbin/mkfifo \
			SCRIPT_SH=/bin/ksh

.if ${FLAVOR:Ma4}
CONFIGURE_ARGS+=	--with-PAGESIZE=A4
.endif

FAKE_FLAGS=	ROOT=${WRKINST} SPOOL=${PREFIX}/libdata/hylafax

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

post-install:
	echo "FontMap: ${LOCALBASE}/share/fonts/ghostscript" \
		>${PREFIX}/libdata/hylafax/etc/hyla.conf

.include <bsd.port.mk>
