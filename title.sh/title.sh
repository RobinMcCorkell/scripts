#!/bin/bash

exe=/usr/bin/${0##*/}
exe=${exe%.title}

for arg in "$@"; do
	if [[ $arg != -* ]]; then
		title=$arg
		break
	fi
done

title=${title:-$0}

###############################################################################
# Tmux handler                                                                #
###############################################################################
tmux::onExit() {
	tmux set-window-option automatic-rename on
}
tmux::setTitle() {
	printf '\033k%s\033\\' "$1"
}

###############################################################################
# xterm handler                                                               #
###############################################################################
xterm::onExit() {
	printf '\033];%s\007' "term"
}
xterm::setTitle() {
	printf '\033];%s\007' "$1"
}

if [[ $TMUX ]]; then
	tmux::setTitle "$title"
	trap tmux::onExit EXIT
else
	xterm::setTitle "$title"
	trap xterm::onExit EXIT
fi

"$exe" "$@"
