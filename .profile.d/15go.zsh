if [ -z "$GOROOT" ]; then
 	# no goroot set?  try to find it!
	if [ -d $HOME/go ]; then
		GOROOT=$HOME/go
	elif [ -d $HOME/local/go ]; then
		GOROOT=$HOME/local/go
	elif [ -d /usr/local/go ]; then
		GOROOT=/usr/local/go
	elif [ -d /opt/go ]; then
		GOROOT=/opt/go
	fi
	if [ -n "$GOROOT" ]; then
		export GOROOT
	fi
fi

# if we've been told where there's a goroot, or found one, then set it up.
if [ -n "$GOROOT" ]; then
	if [ ! -d $GOROOT/bin ]; then
		unset GOROOT
	else
		export GOROOT
		PATH=$GOROOT/bin:$PATH
	fi
fi
if [ -d "${HOME}/local/go_appengine" ]; then
	PATH="${HOME}/local/go_appengine":${PATH}
fi
