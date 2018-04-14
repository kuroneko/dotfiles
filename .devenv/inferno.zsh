if [ -z "$INFERNO" ]; then
	if [ -d "${HOME}/inferno" ]; then
		INFERNO="${HOME}/inferno"
		export INFERNO
	fi
fi

if [ -n "$INFERNO" -a -d "$INFERNO" ]; then
	PATH=${INFERNO}/Linux/386/bin:$PATH

	export PATH
fi
