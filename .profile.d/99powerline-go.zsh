if POWERLINE_GO_CMD="$(which powerline-go)"; then
  export POWERLINE_GO_CMD
  export POWERLINE_MODULES=(host cwd git exit root)
  export POWERLINE_PRIORITY=(root host cwd exit git)

  export POWERLINE_OPTS=(-colorize-hostname -cwd-max-depth 3 -max-width "${COLUMNS}")

  function powerline_precmd() {
    PS1="$(${POWERLINE_GO_CMD} -error $? "${POWERLINE_OPTS[@]}" -modules "${(j:,:)POWERLINE_MODULES}" -priority "${(j:,:)POWERLINE_PRIORITY}" -shell zsh)"
  }

  function install_powerline_precmd() {
    for s in "${precmd_functions[@]}"; do
      if [ "$s" = "powerline_precmd" ]; then
        return
      fi
    done
    precmd_functions+=(powerline_precmd)
  }

  if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
  fi
fi

