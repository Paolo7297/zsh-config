# antidote owns the omz checkout, so its self-update check is just forks
zstyle ':omz:update' mode disabled

# Keep AWS profile across sessions. set with "asp profile-name"
export AWS_STATE_FILE=~/.aws/current_profile
export AWS_PROFILE_STATE_ENABLED=true

# per-directory-history.
HISTORY_BASE=${XDG_CACHE_HOME:-$HOME/.cache}/zsh/directory_history
HISTORY_START_WITH_GLOBAL=false
PER_DIRECTORY_HISTORY_PRINT_MODE_CHANGE=false
