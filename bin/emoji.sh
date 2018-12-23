cat ~/bin/unicode.txt | rofi -dmenu -width 40 -l 20 -i -p "emoji" | awk '{print $1}' | tr -d '\n' | xclip -selection clipboard
#😏
