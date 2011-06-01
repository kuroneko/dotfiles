if [ -d $HOME/plan9 ]; then
  PLAN9=$HOME/plan9
  PATH=$PATH:$PLAN9/bin
  export PLAN9 PATH
fi
