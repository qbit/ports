# $OpenBSD: Makefile,v 1.7 2021/05/21 19:50:37 kmos Exp $

COMMENT =		SPDX license list query tool

MODPY_EGG_VERSION =	0.3.2
DISTNAME =		spdx-lookup-${MODPY_EGG_VERSION}
PKGNAME =		py-spdx-lookup-${MODPY_EGG_VERSION}
REVISION =		3

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/bbqsrc/spdx-lookup-python

# BSD-2-Clause
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		textproc/py-spdx${MODPY_FLAVOR}

post-install:
	for i in ${PREFIX}/bin/*; do \
		mv $${i} $${i}${MODPY_BIN_SUFFIX} ;\
	done

NO_TEST =		No tests written by upstream

.include <bsd.port.mk>
