# $OpenBSD: Makefile,v 1.31 2021/05/10 17:22:23 tb Exp $

COMMENT = 	lightweight connection pooler for PostgreSQL

V = 		1.14.0
DISTNAME = 	pgbouncer-${V}
REVISION =	0

CATEGORIES = 	databases

HOMEPAGE = 	http://wiki.postgresql.org/wiki/PgBouncer

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB = 	c event_core event_extra crypto ssl

MASTER_SITES = 	https://pgbouncer.github.io/downloads/files/${V}/

LIB_DEPENDS =	devel/libevent2

CONFIGURE_STYLE = 	gnu
#Disable the detection of asciidoc since docs are already included
CONFIGURE_ENV =         ASCIIDOC=' '
CONFIGURE_ARGS = 	--with-libevent=${LOCALBASE} --without-cares
MAKE_FLAGS+=		V=1

USE_GMAKE = 		Yes

.include <bsd.port.mk>
