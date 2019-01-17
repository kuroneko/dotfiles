OS=$(uname -s)
case "$OS" in
Linux)
	eval "$(dircolors)"
	LS_OPTIONS='--color=auto -p'
	;;
Darwin)
	CLICOLOR=1
	export CLICOLOR
	LS_OPTIONS='-F'
	;;
*)
	LS_OPTIONS=''
	;;
esac
unset OS
export LS_OPTIONS
alias ls='ls ${=LS_OPTIONS}'
