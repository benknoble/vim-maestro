#! /usr/bin/env bash

SESSION=vim-talk-presentation
SERVER=vim-example

log() {
  printf '%s\n' "$@"
}

die() {
  log "$@"
  exit 1
}

usage() {
  USAGE=$(cat <<DOG
usage: $0

Launch the presentation.

Requires tmux and sotte/presenting.vim (github). Expects to be able to ssh into
vim-example, a VM/server with no vim configuration on it.
DOG
  )
  die "$USAGE"
}

has_tmux() {
  command -v tmux >/dev/null
}

launch_tmux() {
  if [[ -n "$TMUX" ]]; then
    die "Don't launch from in tmux"
  fi
  tmux new-session -c "$PWD" -s "$SESSION" -d
}

# create a new window in the session
# parameters:
#   1: window name (defaults to "", meaning tmux will number it)
#   2: command to run (defaults to "", meaning tmux launches a shell)
new_window() {
  tmux new-window -t "$SESSION" -n "${1:-}" -d ${2:-}
}

setup_presentation() {
  new_window "presentation" "vim -S presentation.vim slides/*.md"
  new_window "example" "ssh -t $SERVER"
}

copy_samples() {
    scp -r ./samples "$SERVER:samples"
}

attach_tmux() {
  tmux attach-session -t "$SESSION:presentation"
}

present() {
  copy_samples
  launch_tmux
  setup_presentation
  attach_tmux
}

main() {
  if (($# > 0)) || ! has_tmux; then
    usage
  fi
  present
}

main "$@"
