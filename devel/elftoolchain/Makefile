COMMENT =		BSD-licensed implementation of compilation tools

DISTNAME =		elftoolchain-0.7.1
REVISION =		2
CATEGORIES =		devel

# BSD
PERMIT_PACKAGE =	Yes

SITES =			${SITE_SOURCEFORGE:=elftoolchain/}
EXTRACT_SUFX =		.tgz

LIBDIR =		${PREFIX}/lib/elftoolchain
INCSDIR =		${PREFIX}/include/elftoolchain
MAKE_FLAGS +=		MANDIR=${PREFIX}/man/man \
			BINDIR=${PREFIX}/bin \
			LIBDIR=${LIBDIR} \
			INCSDIR=${INCSDIR}

# Only build a subset of the libraries/tools
MAKE_FLAGS +=		WITH_TOOLS=No

NO_TEST =		Yes

pre-install:
	${INSTALL_DATA_DIR} ${LIBDIR} ${INCSDIR}

.include <bsd.port.mk>
