# reuse the compdump for 20h instead of rebuilding it every shell
zstyle ':plugin:ez-compinit' 'use-cache' 'yes'

if [ -e /Applications/Docker.app/Contents/Resources/etc/docker.zsh-completion ]; then
  fpath=(/Applications/Docker.app/Contents/Resources/etc $fpath)
fi