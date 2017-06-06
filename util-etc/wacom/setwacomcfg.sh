#/bin/bash
set -x

	#REGISTER WACOM VARS
WACOMPAD="Wacom Intuos4 6x9 Pad pad"
WACOMPEN="Wacom Intuos4 6x9 Pen stylus"
WACOMERASER="Wacom Intuos4 6x9 Pen eraser"
WACOMCURSOR="Wacom Intuos4 6x9 Pen cursor"

	#SEXY FORLOOPS ;-)
for i in 1 2 3 8 9 10 11 12 13
	do
	#NULLIFY THE BUTTONS			
		xsetwacom --set "$WACOMPAD" Button $i 0
	done

	#NULLIFY SCROLLING
xsetwacom --set "$WACOMPAD" AbsWheelUp		0
xsetwacom --set "$WACOMPAD" AbsWheelDown	0

	#WE DONT WANT "TOUCH" EITHER(??)
xsetwacom --set "$WACOMPAD" touch off
xsetwacom --set "$WACOMPEN" TapTime 0

	#SET BEZIER PRESSURE
xsetwacom --set "$WACOMPEN" PressureCurve	0 25 50 100
xsetwacom --set "$WACOMPEN" Threshold		27

	#EXIT SCRIPT
exit
