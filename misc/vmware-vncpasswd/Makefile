COMMENT=	obfuscate passwords for VMware RemoteDisplay.vnc.key

DISTNAME=	vncpassword
PKGNAME=	vmware-vncpasswd-0.0

CATEGORIES=	misc
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=	http://communities.vmware.com/docs/DOC-7535

# no license for vmware-vncpasswd.c; other files are ISC/PD
PERMIT_PACKAGE=		missing license
PERMIT_DISTFILES=	missing license

WANTLIB=	c

SITES=		https://spacehopper.org/mirrors/
#SITES=		http://communities.vmware.com/servlet/JiveServlet/download/7535-4-13355/
EXTRACT_SUFX=	.zip

NO_TEST=		Yes

do-configure:
	cp ${FILESDIR}/Makefile ${WRKSRC}/

.include <bsd.port.mk>
