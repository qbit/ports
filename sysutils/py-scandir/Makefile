# $OpenBSD: Makefile,v 1.9 2021/05/21 19:50:36 kmos Exp $

COMMENT =		improved directory iterator and faster os.walk()

MODPY_EGG_VERSION =	1.10.0
DISTNAME =		scandir-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		4

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/benhoyt/scandir

# BSD 3-Clause
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

WANTLIB += pthread ${MODPY_WANTLIB}

TEST_DEPENDS +=		${FULLPKGNAME}:${BUILD_PKGPATH}

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-unittest2
.endif

do-test:
	cd ${WRKSRC}/test && ${SETENV} ${ALL_TEST_ENV} ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
