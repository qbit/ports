# $OpenBSD: Makefile,v 1.10 2020/09/20 16:04:52 kmos Exp $

COMMENT =	munkres algorithm for the Assignment Problem

MODPY_EGG_VERSION =	1.1.2
DISTNAME =		munkres-${MODPY_EGG_VERSION}
PKGNAME = 		py-algorithm-${DISTNAME}
REVISION =              1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/bmc/munkres

# Apache v2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS = 	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
