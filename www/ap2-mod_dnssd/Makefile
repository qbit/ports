COMMENT=	Apache2 Zeroconf module

DISTNAME=	mod_dnssd-0.6
PKGNAME=	ap2-${DISTNAME}
REVISION=	6

CATEGORIES=	www net

HOMEPAGE=	http://0pointer.de/lennart/projects/mod_dnssd/

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += apr-1 avahi-client avahi-common dbus-1 execinfo iconv
WANTLIB += intl pthread

SITES=		${HOMEPAGE}

LIB_DEPENDS=	devel/apr \
		net/avahi,-libs

RUN_DEPENDS=	net/avahi \
		www/apache-httpd
BUILD_DEPENDS=	www/apache-httpd

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/apache2" \
		ac_cv_path_APXS=${LOCALBASE}/sbin/apxs2 \
		ac_cv_path_APACHECTL=${LOCALBASE}/sbin/apachectl2
CONFIGURE_ARGS=	--disable-lynx

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/apache2
	${INSTALL_PROGRAM} ${WRKSRC}/src/.libs/mod_dnssd.so \
		${PREFIX}/lib/apache2
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ap2-mod_dnssd
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ap2-mod_dnssd/

.include <bsd.port.mk>
