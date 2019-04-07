sed -ri 's/^color-normal.+/color-normal: "#2e2e2d, #f2f2f2, #2e2e2d, #f2f2f2, #2e2e2d";/g' ~/.config/rofi/config.rasi
sed -ri 's/color-window.+/color-window: "#2e2e2d, #90c94d, #90c94d";/g' ~/.config/rofi/config.rasi
sed -i 's/papercolor_light/papercolor_dark/' ~/.config/openbox/rc.xml
sed -i 's/light/dark/' ~/.vimrc
openbox --reconfigure
~/bin/dark.py
for file in $(ls /dev/pts)
do
	[ $file == "ptmx" ] && continue
	echo -ne '\033]11;#2e2e2d\007' > "/dev/pts/$file"
	echo -ne '\033]10;#f2f2f2\007' > "/dev/pts/$file"
	echo -ne '\033]4;0;#2c2c2c\008' > "/dev/pts/$file"
	echo -ne '\033]4;1;#c62828\008' > "/dev/pts/$file"
	echo -ne '\033]4;2;#558b2e\008' > "/dev/pts/$file"
	echo -ne '\033]4;3;#f9a825\008' > "/dev/pts/$file"
	echo -ne '\033]4;4;#1565c1\008' > "/dev/pts/$file"
	echo -ne '\033]4;5;#6a1e9a\008' > "/dev/pts/$file"
	echo -ne '\033]4;6;#00838f\008' > "/dev/pts/$file"
	echo -ne '\033]4;7;#ffffff\008' > "/dev/pts/$file"
	echo -ne '\033]4;8;#969694\008' > "/dev/pts/$file"
	echo -ne '\033]4;9;#f15250\008' > "/dev/pts/$file"
	echo -ne '\033]4;10;#86bd47\008' > "/dev/pts/$file"
	echo -ne '\033]4;11;#f8e63a\008' > "/dev/pts/$file"
	echo -ne '\033]4;12;#77b2f6\008' > "/dev/pts/$file"
	echo -ne '\033]4;13;#b963c8\008' > "/dev/pts/$file"
	echo -ne '\033]4;14;#25c3dc\008' > "/dev/pts/$file"
	echo -ne '\033]4;15;#ffffff\008' > "/dev/pts/$file"
done
