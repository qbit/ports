COMMENT =		highly accurate Game Boy Color emulator

REV =			571
V =			0.5.0.${REV}
DISTNAME =		gambatte_src-r${REV}
PKGNAME =		gambatte-$V
REVISION =		8

CATEGORIES =		emulators

HOMEPAGE =		https://gambatte.sourceforge.net/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL c m z

COMPILER =		base-clang ports-gcc base-gcc

CXXFLAGS_base-clang =	-std=c++14

SITES =			${SITE_SOURCEFORGE:=gambatte/}

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_2}
MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No
MODPY_TESTDEP =		Yes

SEPARATE_BUILD =	No

BUILD_DEPENDS =		graphics/png
LIB_DEPENDS =		${MODGCC4_CPPLIBDEP} \
			devel/sdl

TEST_DEPENDS =		graphics/png
TEST_TARGET =		check

MAKE_FILE =		${FILESDIR}/Makefile

CONFIGURE_STYLE =	none

CONFIGURE_ARGS =	CC="${CC}" \
			CXX="${CXX}" \
			LINK="${CXX}" \
			CFLAGS="${CFLAGS} -DHAVE_USBHID_H -DUSBHID_UCR_DATA -DUSBHID_NEW" \
			CXXFLAGS="${CXXFLAGS} -DHAVE_STDINT_H" \
			PYTHON="${MODPY_BIN}"

MAKE_FLAGS =		CC="${CC}" \
			CXX="${CXX}" \
			LINK="${CXX}" \
			CFLAGS="${CFLAGS} -DHAVE_USBHID_H -DUSBHID_UCR_DATA -DUSBHID_NEW" \
			CXXFLAGS="${CXXFLAGS} -DHAVE_STDINT_H" \
			PYTHON="${MODPY_BIN}"

do-install:
	${INSTALL_DATA} ${FILESDIR}/gambatte_sdl.6 ${PREFIX}/man/man6
	${INSTALL_PROGRAM} ${WRKDIST}/gambatte_sdl/gambatte_sdl ${PREFIX}/bin


.include <bsd.port.mk>
