COMMENT=	YAML parser and emitter in Python

GH_ACCOUNT=	yaml
GH_PROJECT=	pyyaml
GH_TAGNAME=	6.0.2rc1

MODPY_EGG_VERSION=6.0.2rc1
DISTNAME=	PyYAML-${MODPY_EGG_VERSION}
PKGNAME=	py-yaml-${MODPY_EGG_VERSION}

CATEGORIES=	textproc

HOMEPAGE=	https://pyyaml.org/wiki/PyYAML

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB+=	yaml-0 ${MODPY_WANTLIB}

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

#MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

CFLAGS+=	-I${LOCALBASE}/include
LIB_DEPENDS=	devel/libyaml
BUILD_DEPENDS=	lang/cython${MODPY_FLAVOR}

.include <bsd.port.mk>
