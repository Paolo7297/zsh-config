_comp_files=($XDG_CACHE_HOME/zsh/zcompcache(Nm-20))
if (( $#_comp_files )); then
compinit -i -C -d "$XDG_CACHE_HOME/zsh/zcompcache"
else
compinit -i -d "$XDG_CACHE_HOME/zsh/zcompcache"
fi
unset _comp_files