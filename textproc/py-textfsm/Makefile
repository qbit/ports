COMMENT =		parse semi-structured text into Python table

MODPY_EGG_VERSION =	1.1.3
DISTNAME =		textfsm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/google/textfsm

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/py-future${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

.include <bsd.port.mk>
