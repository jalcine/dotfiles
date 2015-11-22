#!/bin/bash
# The $PATH variable is already set up by my shell configuration.

# D-Bus autolaunch is broken
if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
    eval `dbus-launch --sh-syntax --exit-with-session`
fi

xrdb -merge ~/.Xresources
