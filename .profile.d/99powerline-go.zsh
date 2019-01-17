POWERLINE_GO_CMD="$(which powerline-go)"
if [ "$?" -eq 0 ]; then
  export POWERLINE_GO_CMD

  export POWERLINE_OPTS=(-colorize-hostname -cwd-max-depth 3 -max-width "${COLUMNS}" -modules host,cwd,git,exit,root -priority root,host,cwd,exit,git)

  function powerline_precmd() {
    PS1="$(${POWERLINE_GO_CMD} -error $? ${POWERLINE_OPTS[@]} -shell zsh)"
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

