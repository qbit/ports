# $OpenBSD: Makefile,v 1.40 2021/02/27 11:13:35 ajacoutot Exp $

COMMENT=		Python module for GnuPG interface

MODPY_EGG_VERSION=	0.4.6
DISTNAME=		python-gnupg-${MODPY_EGG_VERSION}
PKGNAME=		py-gnupg-${MODPY_EGG_VERSION}

CATEGORIES=		security devel

HOMEPAGE=		https://bitbucket.org/vinay.sajip/python-gnupg

# BSD 3-clause
PERMIT_PACKAGE=	Yes

MODPY_PI=		Yes

MODULES=		lang/python

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS=		security/gnupg
RUN_DEPENDS=		security/gnupg

MODPY_SETUPTOOLS=	Yes

do-test:
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} LOGNAME=nobody ${MODPY_BIN} test_gnupg.py

.include <bsd.port.mk>
