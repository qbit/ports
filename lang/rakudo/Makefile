# $OpenBSD: Makefile,v 1.35 2021/03/11 12:17:21 pascal Exp $

BROKEN-arm =		MoarVM panic: Memory allocation failed; could not allocate 312268 bytes

COMMENT =		Rakudo compiler for the Raku language

V =			2021.02.1
DISTNAME =		rakudo-$V

NQP_VERSION =		2021.02

CATEGORIES =		lang perl6

HOMEPAGE =		https://rakudo.org

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# Artistic 2
PERMIT_PACKAGE =	Yes

WANTLIB += atomic_ops c ffi kvm m moar pthread uv zstd

MASTER_SITES =		https://rakudo.org/dl/rakudo/

BUILD_DEPENDS =	lang/nqp>=${NQP_VERSION} \
		math/libtommath
LIB_DEPENDS =	lang/moarvm
RUN_DEPENDS =	lang/nqp>=${NQP_VERSION}

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	/usr/bin/perl Configure.pl
CONFIGURE_ARGS +=	--prefix="${PREFIX}"
USE_GMAKE =		Yes
MAKE_FLAGS +=		VERBOSE_BUILD=Yes

post-install:
	rm -rf ${PREFIX}/share/perl6/core/precomp/*
	${INSTALL_SCRIPT} ${WRKSRC}/tools/install-dist.p6 \
		${PREFIX}/bin/perl6-install-dist

.include <bsd.port.mk>
