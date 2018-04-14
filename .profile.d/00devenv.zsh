devenv() {
	if [ -z "$1" ]; then
		echo "Usage: $0 <devenv>"
		return 1
	fi
	local envscript="${HOME}/.devenv/$1.zsh"
	if [ -e "${envscript}" ]; then
		source "${envscript}"
	else
		echo "Environment \"$1\" not found"
		return 1
	fi
}
