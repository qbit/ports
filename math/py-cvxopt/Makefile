# $OpenBSD: Makefile,v 1.5 2021/05/16 00:35:34 daniel Exp $

COMMENT =		convex optimization package

MODPY_EGG_VERSION =	1.2.6
DISTNAME =		cvxopt-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math

MAINTAINER =		Paul Irofti <paul@irofti.net>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

LIB_DEPENDS =		math/lapack \
			math/blas \
			math/suitesparse

.include <bsd.port.mk>
