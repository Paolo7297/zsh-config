# ls
alias ll='ls -l'
alias la='ls -la'
alias l=ll

# exa
if type eza &> /dev/null; then
  alias exa=eza
  alias ls='eza --git --group-directories-first'
  alias tree='eza --tree'
  alias ltr=tree
fi