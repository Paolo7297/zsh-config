_p10k_instant=${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh
[[ -r $_p10k_instant ]] && source $_p10k_instant
unset _p10k_instant