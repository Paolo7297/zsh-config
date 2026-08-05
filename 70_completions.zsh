zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
zstyle ':fzf-tab:complete:*:*' fzf-preview '
  if [[ -d $realpath ]]; then eza -1 --color=always $realpath
  elif [[ -f $realpath ]]; then bat --color=always --style=numbers --line-range=:100 $realpath
  fi 2>/dev/null'
zstyle ':fzf-tab:*' fzf-flags --color=fg:1,fg+:2 --bind=tab:accept
zstyle ':fzf-tab:*' use-fzf-default-opts yes
zstyle ':completion:*' matcher-list 'r:|=**'

# Terraform / OpenTofu.
if (( $+commands[tofu] )); then
  compdef _terraform tofu
fi