xrandr --dpi 150
xrdb ~/.Xresources.hidpi

export GDK_SCALE=2
export GDK_DPI_SCALE=0.5

export QT_DEVICE_PIXEL_RATIO=2
export QT_STYLE_OVERRIDE=Breeze

exec i3
