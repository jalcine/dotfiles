xmodmap ~/.xmodmap
xrdb -merge ~/.Xresources
xflux -z 94607
xbacklight -set 25
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrandr --dpi 96
export $(dbus-launch)
