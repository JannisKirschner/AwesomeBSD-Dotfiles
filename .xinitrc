sxhkd &
setxkbmap ch & 
xrandr --output default --mode 2560x1440 &
#xrandr --output default --mode 3840x1920 &
compton --config ~/.config/compton.conf &
feh --bg-scale ~/.config/wallpaper.png &
conky &
sh ~/.config/lemonbarconf.sh  | lemonbar -p &
urxvt & 
exec bspwm