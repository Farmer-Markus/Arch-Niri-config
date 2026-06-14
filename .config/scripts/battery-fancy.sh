#!/bin/bash

perc=$(upower -b | grep -E 'percentage' | grep -oE '[0-9]+')
iconName=$(upower -b | grep "icon-name:" | awk -F"'" '{print $2}')

# charging discharging
state=$(upower -b | grep "state:" | awk -F" " '{print $2}')

icon=""

case $iconName in
	battery-full-symbolic)
		icon="󱊣"
		;;
	battery-full-charged-symbolic|battery-full-charging-symbolic)
		icon="󱊦"
		;;

	battery-good-symbolic)
		icon="󱊢"
		;;
	battery-good-charging-symbolic)
		icon="󱊥"
		;;

	battery-low-symbolic)
		icon="󱊡"
		;;
	battery-low-charging-symbolic)
		icon="󱊤"
		;;

	battery-caution-symbolic)
		icon="󱃍"
		;;
	battery-caution-charging-symbolic)
		icon="󰢟"
		;;

	battery-empty-symbolic)
		icon="󰂎"
		;;

	ac-adapter-symbolic|battery-missing-symbolic)
		icon="󱉞"
		;;
esac

echo "$icon$perc%"

