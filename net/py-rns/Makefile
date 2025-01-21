COMMENT =		cryptography-based networking stack

MODPY_DISTV =		0.9.1
DISTNAME=		rns-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		net devel

HOMEPAGE =		https://reticulum.network/

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-serial \
			security/py-cryptography

.include <bsd.port.mk>
