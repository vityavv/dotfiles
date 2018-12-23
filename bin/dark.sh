convert -size 1x1 canvas:\#282828 ~/background_pixel.png
feh --bg-scale ~/background_pixel.png
sed -ri 's/^color-normal.+/color-normal: "#282828, #ebdbb2, #282828, #ebdbb2, #282828";/g' ~/.config/rofi/config.rasi
sed -ri 's/color-window.+/color-window: "#282828, #b8bb26, #b8bb26";/g' ~/.config/rofi/config.rasi
sed -i 's/gruvbox_light/gruvbox_dark/' ~/.config/openbox/rc.xml
sed -i 's/light/dark/' ~/.vimrc
openbox --reconfigure
~/bin/dark.py
for file in $(ls /dev/pts)
do
	[ $file == "ptmx" ] && continue
	echo -ne '\033]11;#282828\007' > "/dev/pts/$file"
	echo -ne '\033]10;#ebdbb2\007' > "/dev/pts/$file"
	echo -ne '\033]4;0;#282828\007' > "/dev/pts/$file"
	echo -ne '\033]4;8;#928374\007' > "/dev/pts/$file"
	echo -ne '\033]4;1;#cc241d\007' > "/dev/pts/$file"
	echo -ne '\033]4;9;#fb4934\007' > "/dev/pts/$file"
	echo -ne '\033]4;2;#98971a\007' > "/dev/pts/$file"
	echo -ne '\033]4;10;#b8bb26\007' > "/dev/pts/$file"
	echo -ne '\033]4;3;#d79921\007' > "/dev/pts/$file"
	echo -ne '\033]4;11;#fabd2f\007' > "/dev/pts/$file"
	echo -ne '\033]4;4;#458588\007' > "/dev/pts/$file"
	echo -ne '\033]4;12;#83a598\007' > "/dev/pts/$file"
	echo -ne '\033]4;5;#b16286\007' > "/dev/pts/$file"
	echo -ne '\033]4;13;#d3869b\007' > "/dev/pts/$file"
	echo -ne '\033]4;6;#689d6a\007' > "/dev/pts/$file"
	echo -ne '\033]4;14;#8ec07c\007' > "/dev/pts/$file"
	echo -ne '\033]4;7;#a89984\007' > "/dev/pts/$file"
	echo -ne '\033]4;15;#ebdbb2\007' > "/dev/pts/$file"
done
