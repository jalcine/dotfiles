KF5=/opt/kde
QTDIR=/usr
CMAKE_PREFIX_PATH=$KF5:$CMAKE_PREFIX_PATH
XDG_DATA_DIRS=$KF5/share:$XDG_DATA_DIRS:/usr/share
XDG_CONFIG_DIRS=$KF5/etc/xdg:$XDG_CONFIG_DIRS:/etc/xdg
PATH=$KF5/bin:$QTDIR/bin:$PATH
QT_PLUGIN_PATH=$KF5/lib/plugins:$KF5/lib64/plugins:$KF5/lib/x86_64-linux-gnu/plugins:$QTDIR/plugins:$QT_PLUGIN_PATH
QML2_IMPORT_PATH=$KF5/lib/qml:$KF5/lib64/qml:$KF5/lib/x86_64-linux-gnu/qml:$QTDIR/qml
QML_IMPORT_PATH=$QML2_IMPORT_PATH
KDE_SESSION_VERSION=5
KDE_FULL_SESSION=true
SASL_PATH=/usr/lib/sasl2:$KF5/lib/sasl2

if [ ! -x ${KONSOLE_BASE16_THEME} ]; then
  eval "${KONSOLE_BASE16_THEME}";
fi
