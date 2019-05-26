# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

test -s ~/.alias && . ~/.alias || true
#victor

# Set add my bin and goprograms built bin to the path
export PATH="$PATH:/home/victor/bin:/home/victor/programs/goprograms/bin"
# Because xbacklight is a bitch
alias enableBrightness="sudo chmod 666 /sys/class/backlight/intel_backlight/brightness"
# dab <o/
alias dabux="neofetch --ascii ~/dabux --ascii_colors 6 0 2"
# Set the path that Go builds into and installs into
export GOPATH="/home/victor/programs/goprograms"
# Make an alias for going to my go dir
alias cdgo="cd ~/programs/goprograms/src/v"
# Make an alias for discord
alias discord="chromium --app=https://discordapp.com/channels/@me"
# Make a command for showing what image is in my clipboard
alias imgpaste="xclip -selection clipboard -t image/png -o | feh -"
# Make infinite history
export HISTSIZE= 
export HISTFILESIZE=

# Change tty colors
if [ "$TERM" = "linux" ]; then
	echo -en "\e]P0000000"
	echo -en "\e]P1d54e53"
	echo -en "\e]P2b9ca4a"
	echo -en "\e]P3e7c547"
	echo -en "\e]P47aa6da"
	echo -en "\e]P5c397d8"
	echo -en "\e]P670c0b1"
	echo -en "\e]P7ffffff"
	echo -en "\e]P8000000"
	echo -en "\e]P9d54e53"
	echo -en "\e]PAb9ca4a"
	echo -en "\e]PBe7c547"
	echo -en "\e]PC7aa6da"
	echo -en "\e]PDc397d8"
	echo -en "\e]PE70c0b1"
	echo -en "\e]PFffffff"
: << 'END'
	Railscast setup I found online
    echo -en "\e]P0232323" #black
    echo -en "\e]P82B2B2B" #darkgrey
    echo -en "\e]P1D75F5F" #darkred
    echo -en "\e]P9E33636" #red
    echo -en "\e]P287AF5F" #darkgreen
    echo -en "\e]PA98E34D" #green
    echo -en "\e]P3D7AF87" #brown
    echo -en "\e]PBFFD75F" #yellow
    echo -en "\e]P48787AF" #darkblue
    echo -en "\e]PC7373C9" #blue
    echo -en "\e]P5BD53A5" #darkmagenta
    echo -en "\e]PDD633B2" #magenta
    echo -en "\e]P65FAFAF" #darkcyan
    echo -en "\e]PE44C9C9" #cyan
    echo -en "\e]P7E5E5E5" #lightgrey
    echo -en "\e]PFFFFFFF" #white
END
    clear #for background artifacting
fi

# Sets PS1 to [victor => foldername] [!] $ (the [!] comes from the previous lines)
# PS1="[\[\e[1;34m\]\u\[\e[m\] => \[\e[1;32m\]\W\[\e[m\]] $ "
PROMPT_COMMAND=ps1_command
ps1_command() {
	ext="$?"
	PS1=""
	if [ "$ext" != 0 ]; then
		PS1+="\[\e[1;31m\]"
	else
		PS1+="\[\e[1;34m\]"
	fi
	PS1+="●\[\e[m\] \[\e[1;32m\]\W\[\e[m\] $ "
}

# makes ls colorful
alias ls="ls --color=auto"
# me_irl
alias :q="exit"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
