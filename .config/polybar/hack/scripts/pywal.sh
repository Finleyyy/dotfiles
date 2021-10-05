#!/usr/bin/env bash

# Color files
PFILE="$HOME/.config/polybar/hack/colors.ini"
RFILE="$HOME/.config/polybar/hack/scripts/rofi/colors.rasi"

# Get colors
pywal_get() {
	wpg -m	
}

# Change colors
change_color() {
	# polybar
	sed -i -e "s/background = #.*/background = $BG/g" $PFILE
	sed -i -e "s/foreground = #.*/foreground = $FG/g" $PFILE
	sed -i -e "s/primary = #.*/primary = $AC/g" $PFILE
	
	# rofi
	cat > $RFILE <<- EOF
	/* colors */

	{
	  alternate-normal-background:    #00000000;
	  background:    ${BG}FF;
	  active-foreground:    ${AC}FF;
	  selected-active-foreground:    ${AC}26;
	  foreground:    ${FG}FF;
	}
	EOF
	
	polybar-msg cmd restart
}

# Main
pywal_get

# Source the pywal color file
. "$HOME/.cache/wal/colors.sh"

BG=`printf "%s\n" "$background"`
FG=`printf "%s\n" "$foreground"`
AC=`printf "%s\n" "$color1"`

change_color
