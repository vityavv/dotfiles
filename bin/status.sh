#!/usr/bin/env bash

getoutput() {
	# Get time and date
	echo -n "Date: "
	date "+%A, %B %d - %I:%M %p"

	# Get volume
	echo -n "Volume: "
	if [ $(pacmd list-sinks | grep muted | awk '{print $2}') == "yes" ]; then
		echo -n "[MUTED] "
	fi
	pacmd list-sinks | grep volume | head -1 | awk '{print $5}'
	
	# Get wifi status
	echo -n "Wifi status:"
	nmcli | head -n 1 | awk '{ $1 = ""; print $0 }'
	
	# Get battery power
	for battery in $(upower -e | grep BAT); do
		basename $battery | cut -d _ -f 2 | head -c -1
		echo -n ":	"
		upower -i $battery | grep -E 'state|time to empty|percentage|to full' | sed 's/\s\s\+/\t/g' | cut -f3 | awk -vRS="\n" -vORS="\t" '1'
		echo
	done

	# Get memory status
	free | awk '/^Mem:/ {
		printf "Memory: ["; 
		while(i++ < $3/200000) printf "█"; 
		while(o++ < $4/200000) printf " "; 
		printf "] %.2f%%\n", 100*$3/$2
	}'
}

desktop=$(rofi -dmenu -width 40 -lines 0 -mesg "$(getoutput)" -p "sus: suspend | lock: lock screen")

if [ $desktop == "sus" ]
then
	lock.sh
	systemctl suspend
fi
if [ $desktop == "lock" ]
then
	lock.sh
fi
