COMMENT =	plugin-based library to create KDE window decorations
DISTNAME =	kdecoration-${VERSION}

SHARED_LIBS +=  kdecorations2         0.4 # 5.12.0
SHARED_LIBS +=  kdecorations2private  0.1 # 5.12.0

WANTLIB += ${COMPILER_LIBCXX} KF5CoreAddons KF5I18n Qt5Core Qt5Gui
WANTLIB += m

MODKDE5_TRANSLATIONS = Yes

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/kcoreaddons

TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
