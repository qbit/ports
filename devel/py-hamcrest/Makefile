# $OpenBSD: Makefile,v 1.5 2021/02/16 23:02:06 sthen Exp $

COMMENT =		Hamcrest matchers for Python

MODPY_EGG_VERSION =	1.9.0
DISTNAME =		PyHamcrest-${MODPY_EGG_VERSION}
PKGNAME =		py-hamcrest-${MODPY_EGG_VERSION}
REVISION =		2

CATEGORIES =		devel

HOMEPAGE =		http://hamcrest.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
FLAVORS =		python3
FLAVOR =		python3

MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
