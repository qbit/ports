COMMENT=	Atmel AVR 8-bit RISC microcontrollers' GNU binutils #'

VER=		2.30
DISTNAME=	binutils-${VER}
PKGNAME=	avr-binutils-${VER}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	https://www.gnu.org/software/binutils/

# GPLv3
PERMIT_PACKAGE=	Yes
WANTLIB=		c z

SITES=		${SITE_GNU:=binutils/}
DIST_SUBDIR=	binutils

CONFIGURE_ARGS+=--enable-commonbfdlib=no

LIBTOOL_FLAGS=	--tag=disable-shared

.include <bsd.port.mk>
