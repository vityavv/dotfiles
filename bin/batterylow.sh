battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
avg=0
toolow=0
for battery in $battery_level; do
	if [ $battery -le 10 ]; then
		(( toolow++ ))
		(( avg = avg + battery ))
	fi
done
(( avg = avg / 2 ))
if [ $toolow -ge 2 ] && [ ! $(acpi -b | grep -o Charging) ]; then
	notify-send -u critical "Battery low" "Battery level is ${avg}%!"
fi
