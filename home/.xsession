#!/bin/bash
# Originally sourced from https://gist.github.com/whitequark/10744962.

# The $PATH variable is already set up by my shell configuration.

# Import all of the KDE plugins for Qt so that Skype can recognize them.
QT_PLUGIN_PATH=${QT_PLUGIN_PATH+$QT_PLUGIN_PATH:}`kde4-config --path qtplugins`
export QT_PLUGIN_PATH

if test -z "$XDG_DATA_DIRS"; then
    XDG_DATA_DIRS="`kde4-config --prefix`/share:/usr/share:/usr/local/share"
    export XDG_DATA_DIRS
fi

# D-Bus autolaunch is broken
if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
    eval `dbus-launch --sh-syntax --exit-with-session`
fi

# Masquerade i3 as a full KDE session.
KDE_FULL_SESSION=true
export KDE_FULL_SESSION
xprop -root -f KDE_FULL_SESSION 8t -set KDE_FULL_SESSION true

KDE_SESSION_VERSION=5
export KDE_SESSION_VERSION
xprop -root -f KDE_SESSION_VERSION 32c -set KDE_SESSION_VERSION 4

KDE_SESSION_UID=`id -ru`
export KDE_SESSION_UID

kstartupconfig5

# XCursor mouse theme needs to be applied here to work even for kded or ksmserver
if test -n "$kcminputrc_mouse_cursortheme" -o -n "$kcminputrc_mouse_cursorsize" ; then
    kapplymousetheme "$kcminputrc_mouse_cursortheme" "$kcminputrc_mouse_cursorsize"
    if test $? -eq 10; then
        XCURSOR_THEME=default
        export XCURSOR_THEME
    elif test -n "$kcminputrc_mouse_cursortheme"; then
        XCURSOR_THEME="$kcminputrc_mouse_cursortheme"
        export XCURSOR_THEME
    fi
    if test -n "$kcminputrc_mouse_cursorsize"; then
        XCURSOR_SIZE="$kcminputrc_mouse_cursorsize"
        export XCURSOR_SIZE
    fi
fi

xsetroot -cursor_name left_ptr
LD_BIND_NOW=true /usr/lib/kde4/libexec/start_kdeinit_wrapper +kcminit_startup
synclient PalmDetect=1
exec im-launch kwrapper4 ksmserver --windowmanager i3
