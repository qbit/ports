# $OpenBSD: Makefile,v 1.11 2021/07/06 16:55:34 daniel Exp $

COMMENT =		freezes a Flask application into a set of static files

MODPY_EGG_VERSION =	0.12
DISTNAME =		Frozen-Flask-${MODPY_EGG_VERSION}
PKGNAME =		py-frozen-flask-${MODPY_EGG_VERSION}
REVISION =		6

CATEGORIES =		www

HOMEPAGE =		https://github.com/SimonSapin/Frozen-Flask

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR  =		python3

BUILD_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR}>=4.0.2
RUN_DEPENDS +=		www/py-flask${MODPY_FLAVOR}

post-build:
	cd ${WRKBUILD}/docs && \
		env PYTHONPATH=${WRKSRC} ${MODPY_BIN} -m sphinx . html

DOCS_DIR =	${PREFIX}/share/doc/${MODPY_PY_PREFIX}frozen-flask
post-install:
	${INSTALL_DATA_DIR} ${DOCS_DIR}
	cp -r ${WRKSRC}/docs/html/* ${DOCS_DIR}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
