# JetBrains apps
if [[ -d "$HOME/.local/share/JetBrains/Toolbox/scripts" ]]; then
  export PATH="$PATH:$HOME/.local/share/JetBrains/Toolbox/scripts"
fi

# Bitwarden SSH agent
if [[ -e "$HOME/.bitwarden-ssh-agent.sock" ]]; then
  export SSH_AUTH_SOCK="$HOME/.bitwarden-ssh-agent.sock"
fi

# Amazon AWS SAM
export SAM_CLI_TELEMETRY=0

# UV Tools
if [[ -e "$HOME/.local/bin" ]]; then
  export PATH="$HOME/.local/bin:$PATH"
fi

export EDITOR=nano
