COMMENT=	library for navigating to arbitrary packets in a trace file

DISTNAME=	libpcapnav-0.8
REVISION=	3
SHARED_LIBS=	pcapnav	1.0
CATEGORIES=	net
SITES=		${SITE_SOURCEFORGE:=netdude/}

HOMEPAGE=	https://netdude.sourceforge.net/doco/libpcapnav/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		pcap

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-html-dir=${PREFIX}/share/doc/libpcapnav

.include <bsd.port.mk>
