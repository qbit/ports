COMMENT=	web framework for python

MODPY_EGG_VERSION=	0.61
DISTNAME=	web.py-${MODPY_EGG_VERSION}
PKGNAME=	py-webpy-${MODPY_EGG_VERSION}
REVISION=	2

CATEGORIES=	www

HOMEPAGE=	http://webpy.org

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Public Domain, except wsgiserver
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS=	www/py-cheroot${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
