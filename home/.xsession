#!/bin/bash
# The $PATH variable is already set up by my shell configuration.

if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
   ## if not found, launch a new one
   eval `dbus-launch --sh-syntax`
   echo "D-Bus per-session daemon address is: $DBUS_SESSION_BUS_ADDRESS"
fi

xrdb -load ~/.Xresources
xmodmap ~/.xmodmap

# Start xflux in California.
xflux -z 94612
