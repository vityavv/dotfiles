convert -size 1x1 canvas:\#fbf1c7 ~/background_pixel.png
feh --bg-scale ~/background_pixel.png
sed -ri 's/^color-normal.+/color-normal: "#fbf1c7, #3c3836, #fbf1c7, #3c3836, #fbf1c7";/g' ~/.config/rofi/config.rasi
sed -ri 's/color-window.+/color-window: "#fbf1c7, #b8bb26, #b8bb26";/g' ~/.config/rofi/config.rasi
sed -i 's/gruvbox_dark/gruvbox_light/' ~/.config/openbox/rc.xml
sed -i 's/dark/light/' ~/.vimrc
openbox --reconfigure
~/bin/light.py
for file in $(ls /dev/pts)
do
	[ $file == "ptmx" ] && continue
	echo -ne '\033]11;#fbf1c7\007' > "/dev/pts/$file"
	echo -ne '\033]10;#3c3836\007' > "/dev/pts/$file"
	echo -ne '\033]4;0;#fbf1c7\007' > "/dev/pts/$file"
	echo -ne '\033]4;8;#928374\007' > "/dev/pts/$file"
	echo -ne '\033]4;1;#cc241d\007' > "/dev/pts/$file"
	echo -ne '\033]4;9;#9d0006\007' > "/dev/pts/$file"
	echo -ne '\033]4;2;#98971a\007' > "/dev/pts/$file"
	echo -ne '\033]4;10;#79740e\007' > "/dev/pts/$file"
	echo -ne '\033]4;3;#d79921\007' > "/dev/pts/$file"
	echo -ne '\033]4;11;#b57614\007' > "/dev/pts/$file"
	echo -ne '\033]4;4;#458588\007' > "/dev/pts/$file"
	echo -ne '\033]4;12;#076678\007' > "/dev/pts/$file"
	echo -ne '\033]4;5;#b16286\007' > "/dev/pts/$file"
	echo -ne '\033]4;13;#8f3f71\007' > "/dev/pts/$file"
	echo -ne '\033]4;6;#689d6a\007' > "/dev/pts/$file"
	echo -ne '\033]4;14;#427b58\007' > "/dev/pts/$file"
	echo -ne '\033]4;7;#7c6f64\007' > "/dev/pts/$file"
	echo -ne '\033]4;15;#3c3836\007' > "/dev/pts/$file"
done
