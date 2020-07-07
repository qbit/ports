# $OpenBSD: Makefile,v 1.19 2020/01/24 10:36:41 sthen Exp $

COMMENT=	maildir indexer and searcher with emacs frontend

V=		1.4.10

DISTNAME=	mu-$V

FLAVORS=	guile
FLAVOR ?=

SHARED_LIBS=	guile-mu	0.0

CATEGORIES=	mail
HOMEPAGE=	http://www.djcbsoftware.nl/code/mu/

MAINTAINER=	Stefan Hagen <sh+ports@codevoid.de>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} assuan c ffi gio-2.0 glib-2.0 gmime-3.0
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error gpgme gthread-2.0
WANTLIB += iconv idn2 intl json-glib-1.0 m pcre unistring uuid
WANTLIB += xapian z curses readline

MASTER_SITES=	https://github.com/djcb/mu/releases/download/${V}/
EXTRACT_SUFX=	.tar.xz

BUILD_DEPENDS=	emacs->=24:editors/emacs

LIB_DEPENDS=	databases/xapian-core \
		devel/glib2 \
		devel/json-glib \
		mail/gmime30 \
		security/gpgme

# C++14
COMPILER=	base-clang ports-gcc

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
CONFIGURE_STYLE=	autoreconf

CONFIGURE_ARGS=		--disable-gtk \
			--disable-webkit

.if ${FLAVOR} == "guile"
WANTLIB +=		guile-2.2 gc ltdl gmp
LIB_DEPENDS +=		lang/guile2
.else
CONFIGURE_ARGS +=	--disable-guile
.endif

USE_GMAKE=		Yes

SEPARATE_BUILD=		Yes

.include <bsd.port.mk>
