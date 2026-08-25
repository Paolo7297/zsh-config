# Zoxide (z pathname)
if (( $+commands[zoxide] )); then
  zsh-defer -c 'eval "$(zoxide init zsh)"'
fi

# fzf: ^T insert file, Alt-C fuzzy cd, ^R history, plus `**<TAB>` path completion.
if (( $+commands[fzf] )); then
  zsh-defer -c 'source <(fzf --zsh)'
fi

# Show autosuggestions with OneHalfDark theme
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=243'

# iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"