COMMENT=	easy, practical library for making terminal apps

MODPY_EGG_VERSION=	1.20.0

DISTNAME=	blessed-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/jquast/blessed

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

# depends on some Windows things?
#NO_TEST=	Yes

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-six${MODPY_FLAVOR} \
		devel/py-wcwidth${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
