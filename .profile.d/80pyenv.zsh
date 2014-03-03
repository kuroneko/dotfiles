if [ -z "${PYENV_ROOT}" ]; then
	if [ -d "${HOME}/.pyenv" ]; then
		PYENV_ROOT="${HOME}/.pyenv"
		export PYENV_ROOT
	fi
fi
if [ -n "${PYENV_ROOT}" ]; then
	PATH="${PYENV_ROOT}/bin":"${PATH}"
fi
if which pyenv > /dev/null; then
  eval "$(pyenv init -)"
fi
