GAME =		tanglet
COMMENT =	word finding game
DISTNAME =	${GAME}-1.5.6-src
WANTLIB +=	z
REVISION =	0

RUN_DEPENDS +=	misc/shared-mime-info

post-install:
	mv ${PREFIX}/share/man/man6/${GAME}.6 ${PREFIX}/man/man6
	rm -Rf ${PREFIX}/share/man/

.include <bsd.port.mk>
