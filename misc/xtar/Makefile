COMMENT=	view and manipulate contents of a tar file

DISTNAME=	xtar-1.4
REVISION=	6
CATEGORIES=	misc

SITES=		${SITE_XCONTRIB:=utilities/}

# License: BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xt c m xcb Xm

CONFIGURE_STYLE=imake
LIB_DEPENDS+=	x11/motif
MAKE_FLAGS=	EXTRA_LDOPTIONS=-L${WRKBUILD}/common
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

NO_TEST=	Yes

.include <bsd.port.mk>
