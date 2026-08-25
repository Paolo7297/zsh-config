# antidote owns the omz checkout, so its self-update check is just forks
zstyle ':omz:update' mode disabled

# Keep AWS profile across sessions. set with "asp profile-name"
export AWS_STATE_FILE=~/.aws/current_profile
export AWS_PROFILE_STATE_ENABLED=true
