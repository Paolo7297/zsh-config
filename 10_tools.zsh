# JetBrains apps
if [[ -d "$HOME/.local/share/JetBrains/Toolbox/scripts" ]]; then
  export PATH="$PATH:$HOME/.local/share/JetBrains/Toolbox/scripts"
elif [[ -d "$HOME/Library/Application Support/JetBrains/Toolbox/scripts/" ]]; then
  export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts/"
fi

# Bitwarden SSH agent
if [[ -e "$HOME/.bitwarden-ssh-agent.sock" ]]; then
  export SSH_AUTH_SOCK="$HOME/.bitwarden-ssh-agent.sock"
fi

# UV Tools
if [[ -e "$HOME/.local/bin" ]]; then
  export PATH="$HOME/.local/bin:$PATH"
fi

# nvm costs ~400ms, so load it right after the first prompt instead of before it
if [[ -e "/usr/share/nvm/init-nvm.sh" ]]; then
  zsh-defer source /usr/share/nvm/init-nvm.sh
else
  export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && zsh-defer source "/opt/homebrew/opt/nvm/nvm.sh"
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && zsh-defer source "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
fi

if [[ -e "$HOME/Android/Sdk/" ]]; then
  export ANDROID_HOME="$HOME/Android/Sdk/"
fi

if [[ -e "$HOME/.antigravity/antigravity/bin/" ]]; then
  export PATH="$HOME/.antigravity/antigravity/bin:$PATH"
fi

if [[ -e "/opt/homebrew/bin/brew" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv zsh)"
  export HOMEBREW_NO_ANALYTICS=1
  export HOMEBREW_NO_ENV_HINTS=1
fi

if [[ -e "$HOME/.bun" ]]; then
  export BUN_INSTALL="$HOME/.bun"
  export PATH="$BUN_INSTALL/bin:$PATH"
fi

# VCPkg
if [[ -d "$HOME/.vcpkg" ]]; then
  export VCPKG_ROOT="$HOME/.vcpkg"
  export PATH=$VCPKG_ROOT:$PATH
fi
