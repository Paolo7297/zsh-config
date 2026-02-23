if [ -e /Applications/Docker.app/Contents/Resources/etc/docker.zsh-completion ]; then
  fpath=(/Applications/Docker.app/Contents/Resources/etc $fpath)
fi