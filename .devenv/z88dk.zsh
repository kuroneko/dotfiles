if [ -d ${HOME}/local/z88dk ]; then
	ZCCCFG=${HOME}/local/z88dk/lib/config
	PATH=${HOME}/local/z88dk/bin:${PATH}
	export ZCCCFG PATH
fi
