# $OpenBSD: Makefile,v 1.7 2021/05/21 19:50:26 kmos Exp $

COMMENT =	editable interval tree data structure for Python 2 and 3

MODPY_EGG_VERSION =	3.0.2
DISTNAME =	intervaltree-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2

CATEGORIES =	devel

HOMEPAGE =	https://github.com/chaimleib/intervaltree

# Apache v2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =      Yes
MODPY_PI =	Yes

RUN_DEPENDS =	devel/py-sortedcontainers${MODPY_FLAVOR}

TEST_DEPENDS =	devel/py-test${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

# "test" directory is missing from the tarball, exists only in repository
# could run the regress tests by copying the directory in WRKSRC
NO_TEST =	Yes

.include <bsd.port.mk>
