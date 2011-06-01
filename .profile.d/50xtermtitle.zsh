# hack time!
case "$TERM" in 
    xterm*)
	function precmd { 
	    print -Pn "\e]2;%n@%m\a"
        }
	function preexec {
	    print -Pn "\e]2;%n@%m - $2\a"
	}
	precmd
	;;
    *)
	# do nothing!
	;;
esac
