# $OpenBSD: Makefile,v 1.4 2021/01/04 14:06:36 sthen Exp $

COMMENT =		yEnc Module for Python modified for SABnzbd

MODPY_EGG_VERSION =	4.0.2
DISTNAME =		sabyenc3-${MODPY_EGG_VERSION}
PKGNAME =		py-sabyenc-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		news

HOMEPAGE =		https://github.com/sabnzbd/sabyenc

# LGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODPY_WANTLIB} pthread

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

# No test suites in pypi tarball
NO_TEST =	Yes

.include <bsd.port.mk>
