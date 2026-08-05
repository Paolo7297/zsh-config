# History
export HISTFILE=$ZDOTDIR/.zsh_history
export HISTSIZE=100000
export SAVEHIST=$HISTSIZE

setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt SHARE_HISTORY             # Share history between all sessions.

# You Should Use Zsh plugin
export YSU_MESSAGE_POSITION="after"

# Default editor
export EDITOR=nano

# Amazon AWS SAM
export SAM_CLI_TELEMETRY=0

if [[ $CPUTYPE == arm64 ]]; then
  export DOCKER_DEFAULT_PLATFORM=linux/amd64
fi
