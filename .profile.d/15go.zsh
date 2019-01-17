if [ -z "$GOROOT" ]; then
 	# no goroot set?  try to find it!
	if [ -x $HOME/go/bin/go ]; then
		GOROOT=$HOME/go
	elif [ -x $HOME/local/go/bin/go ]; then
		GOROOT=$HOME/local/go
	elif [ -x /usr/local/go/bin/go ]; then
		GOROOT=/usr/local/go
	elif [ -x /opt/go/bin/go ]; then
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

	# finally, if ${HOME}/go/bin exists, add it to the path.
	if [ "${GOROOT}" != "${HOME}/go" ] && [ -d "${HOME}/go/bin" ]; then
		PATH="${HOME}/go/bin:${PATH}"
	fi
fi
if [ -d "${HOME}/local/go_appengine" ]; then
	PATH="${HOME}/local/go_appengine":${PATH}
fi

