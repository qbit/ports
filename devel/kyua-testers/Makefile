COMMENT =		scriptable interfaces to interact with test programs
DISTNAME =		kyua-testers-0.2
REVISION =		1

CATEGORIES =		devel
HOMEPAGE =		https://github.com/jmmv/kyua

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += atf-c c

SITES =		https://github.com/jmmv/kyua/releases/download/${DISTNAME}/

LIB_DEPENDS =		devel/atf

TEST_DEPENDS =		devel/kyua-cli

TEST_FLAGS =		KYUA=${LOCALBASE}/bin/kyua

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-doxygen

# Install the package and use the following TEST_TARGET if you want to
# perform the tests on the installed files.
#TEST_TARGET =		installcheck

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
