sed -ri 's/^color-normal.+/color-normal: "#eeeeee, #3c3c3b, #eeeeee, #3c3c3b, #eeeeee";/g' ~/.config/rofi/config.rasi
sed -ri 's/^color-window.+/color-window: "#eeeeee, #90c94d, #90c94d";/g' ~/.config/rofi/config.rasi
sed -i 's/dark/light/' ~/.vimrc
sed -i 's/papercolor_dark/papercolor_light/' ~/.config/openbox/rc.xml
openbox --reconfigure
~/bin/light.py
for file in $(ls /dev/pts)
do
	[ $file == "ptmx" ] && continue
	echo -ne '\033]11;#eeeeee\007' > "/dev/pts/$file"
	echo -ne '\033]10;#3c3c3b\007' > "/dev/pts/$file"
	echo -ne '\033]4;0;#f8f8f8\007' > "/dev/pts/$file"
	echo -ne '\033]4;8;#2c2c2c\007' > "/dev/pts/$file"
	echo -ne '\033]4;1;#d7005f\007' > "/dev/pts/$file"
	echo -ne '\033]4;9;#ef5251\007' > "/dev/pts/$file"
	echo -ne '\033]4;2;#718c00\007' > "/dev/pts/$file"
	echo -ne '\033]4;10;#90c94d\007' > "/dev/pts/$file"
	echo -ne '\033]4;3;#ff8f01\007' > "/dev/pts/$file"
	echo -ne '\033]4;11;#ffa000\007' > "/dev/pts/$file"
	echo -ne '\033]4;4;#006f87\007' > "/dev/pts/$file"
	echo -ne '\033]4;12;#4271ae\007' > "/dev/pts/$file"
	echo -ne '\033]4;5;#6a1e9a\007' > "/dev/pts/$file"
	echo -ne '\033]4;13;#c774c1\007' > "/dev/pts/$file"
	echo -ne '\033]4;6;#3c999f\007' > "/dev/pts/$file"
	echo -ne '\033]4;14;#3e999f\007' > "/dev/pts/$file"
	echo -ne '\033]4;7;#2c2c2c\007' > "/dev/pts/$file"
	echo -ne '\033]4;15;#f5f5f5\007' > "/dev/pts/$file"
done
