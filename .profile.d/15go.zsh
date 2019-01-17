if [ -z "$GOROOT" ]; then
	for godir in "${HOME}/go" "${HOME}/local/go" /usr/local/go /opt/go; do
		if [ -x "${godir}/bin/go" ]; then
			GOROOT="${godir}"
			break
		fi
	done
	if [ -n "$GOROOT" ]; then
		export GOROOT
	fi
fi

# if we've been told where there's a goroot, or found one, then set it up.
if [ -n "$GOROOT" ]; then
	export GOROOT
	PATH=$GOROOT/bin:$PATH

	# finally, if ${HOME}/go/bin exists, add it to the path.
	if [ "${GOROOT}" != "${HOME}/go" ] && [ -d "${HOME}/go/bin" ]; then
		PATH="${HOME}/go/bin:${PATH}"
	fi

	if [ -d "${HOME}/local/go_appengine" ]; then
		PATH="${HOME}/local/go_appengine":${PATH}
	fi
fi

