#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'
alias la='lsd -a' ll='la -l'
alias mkdir='mkdir -vp'
alias cp='cp -vi'
alias mv='mv -vi'
alias b='bash' B='clear;bash'
alias S="sudo"
alias shut='sudo halt'
alias rebo='sudo reboot'

EDITOR="nvim"
alias vim="$EDITOR"
alias e="EDITOR" E="sudo $EDITOR"

TERM='LIBGL_ALWAYS_SOFTWARE=1 alacritty'
alias alacritty="$TERM"

alias cat='bat'

# Pacman
alias PAC='sudo pacman --color=always'
alias Pup='PAC --sync --refresh --sysupgrade'
alias Pin='PAC --sync'
alias Pun='PAC --remove --unneeded --nosave --search'
alias Psr='PAC --sync --search'
alias PAQ='PAC --query'
alias Pqi='PAQ --info'
alias Pql='PAQ --list'
alias Pqs='PAQ --search'
alias Pcl='PAC --remove $(PAQ --deps --unrequired --quiet)'

mkcd(){
	mkdir \
		--verbose \
		--parent \
		$1;
	cd $1
}

del(){
	rm \
		--verbose
		--recursive
		--interactive
		--force
		$1
}
