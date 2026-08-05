# ls
alias ll='ls -l'
alias la='ls -la'
alias l=ll

# eza
if (( $+commands[eza] )); then
  alias exa=eza
  alias ls='eza --git --group-directories-first --icons'
  alias tree='eza --tree'
  alias ltr=tree
fi

# open if macos
if (( $+commands[xdg-open] )); then
  alias open='xdg-open'
fi

alias path='tr ":" "\n" <<< "$PATH"'

if (( $+commands[tofu] )); then
  alias terraform=tofu
fi