#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

autoload -U select-word-style
select-word-style bash

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD
setopt AUTO_CD NUMERIC_GLOB_SORT INC_APPEND_HISTORY SHARE_HISTORY \
	HIST_FCNTL_LOCK HIST_VERIFY HASH_CMDS AUTO_CONTINUE PROMPT_PERCENT \
	SH_WORD_SPLIT BASH_AUTO_LIST
unsetopt NOMATCH

## never ever beep ever
#setopt NO_BEEP

## automatically decide when to page a list of completions
#LISTMAX=0

## disable mail checking
#MAILCHECK=0

autoload -U colors
colors

PS1='%n@%m:%~%(!.#.$) '
export PS1

if [ -d "${HOME}/.profile.d" ]; then
	for script in "${HOME}/.profile.d/"*.zsh; do
		. "$script"
	done
fi

# pull in my completion configuration.
. ~/.zsh-comp
