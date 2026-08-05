typeset -U path fpath

zstyle ':plugin:ez-compinit' 'use-cache' 'yes'

if [ -e /Applications/Docker.app/Contents/Resources/etc/docker.zsh-completion ]; then
  fpath=(/Applications/Docker.app/Contents/Resources/etc $fpath)
fi

# ~/.bun/_bun is a #compdef file: fpath, never source it (it self-runs compinit)
if [ -s "$HOME/.bun/_bun" ]; then
  fpath=("$HOME/.bun" $fpath)
fi