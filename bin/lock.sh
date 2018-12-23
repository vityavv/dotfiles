scrot --silent /tmp/lock.png
convert /tmp/lock.png -blur 0x16 /tmp/lock.png
composite -gravity center /home/victor/bin/lock.png /tmp/lock.png /tmp/lock.png
i3lock -i /tmp/lock.png
rm /tmp/lock.png
