COMMENT=	tiny cgi web script handler using shell or Lua

DISTNAME=	haserl-0.9.36
REVISION=	0

CATEGORIES=	www

HOMEPAGE=	https://haserl.sourceforge.net/

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB += c

SITES= 		${SITE_SOURCEFORGE:=haserl/}

FLAVORS=	no_lua static
FLAVOR?=

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-bash-extensions
CONFIGURE_ENV+=	LDFLAGS="${LDFLAGS}"
LDFLAGS=	-L${LOCALBASE}/lib

.if !${FLAVOR:Mno_lua}
MODULES+=	lang/lua
CONFIGURE_ARGS+= --with-lua=lua${MODLUA_DEP_VERSION} # pkg-config name
WANTLIB+=	${MODLUA_WANTLIB} m
LIB_DEPENDS=	${MODLUA_LIB_DEPENDS}
.endif

.if ${FLAVOR:Mstatic}
LDFLAGS+=	${STATIC}
.endif

.include <bsd.port.mk>
