COMMENT =	GTK2 and GTK3 configurator for KDE
DISTNAME =	kde-gtk-config-${VERSION}
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5DBusAddons
WANTLIB += KF5GuiAddons KF5WidgetsAddons KF5WindowSystem Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Svg Qt5Widgets Qt5Xml X11 atk-1.0
WANTLIB += c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-3 harfbuzz intl kdecorations2
WANTLIB += kdecorations2private m pango-1.0 pangocairo-1.0

BUILD_DEPENDS =	www/libsass \
		www/sass \
		x11/xsettingsd \
		devel/gsettings-desktop-schemas

RUN_DEPENDS=	devel/gsettings-desktop-schemas \
		x11/xsettingsd

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/kguiaddons \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		x11/gnome/at-spi2-core \
		x11/kde-plasma/kdecoration>=${VERSION} \
		x11/qt5/qtsvg

.include <bsd.port.mk>
