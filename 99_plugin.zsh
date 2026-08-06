# Zoxide (z pathname)
if (( $+commands[zoxide] )); then
  zsh-defer -c 'eval "$(zoxide init zsh)"'
fi

# fzf: ^T insert file, Alt-C fuzzy cd, ^R history, plus `**<TAB>` path completion.
if (( $+commands[fzf] )); then
  zsh-defer -c 'source <(fzf --zsh)'
fi

# per-directory-history never redraws on toggle. Its segment text is a dynamic
# CONTENT_EXPANSION (see -98_themes.zsh), so a plain reset-prompt re-renders it
# without touching any p10k internals.
if (( $+widgets[per-directory-history-toggle-history] )); then
  function per-directory-history-toggle-and-redisplay() {
    per-directory-history-toggle-history
    zle reset-prompt
  }
  zle -N per-directory-history-toggle-and-redisplay
  bindkey          "${PER_DIRECTORY_HISTORY_TOGGLE:-^G}" per-directory-history-toggle-and-redisplay
  bindkey -M vicmd "${PER_DIRECTORY_HISTORY_TOGGLE:-^G}" per-directory-history-toggle-and-redisplay
fi

# Show autosuggestions with OneHalfDark theme
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=243'

# iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"