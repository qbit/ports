COMMENT =		object interface for AF_INET and AF_INET6 domain sockets

DISTNAME =		IO-Socket-INET6-2.73

CATEGORIES =		net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/p5-Socket6>=0.12
TEST_DEPENDS =		devel/p5-Test-Pod-Coverage devel/p5-Test-Pod

.include <bsd.port.mk>
