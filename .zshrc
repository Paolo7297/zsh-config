# Powerlevel10k instant prompt. Keep at the top.
_p10k_instant=${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh
[[ -r $_p10k_instant ]] && source $_p10k_instant
unset _p10k_instant

export ANTIDOTE_HOME="${ZDOTDIR}/.plugins"

# pre-plugin config, then plugins, then the rest (glob sorts, no find/sort forks)
for file in $ZDOTDIR/-<->_*.zsh(N); do source $file; done

source "${ZDOTDIR}/.antidote/antidote.zsh"
antidote load

for file in $ZDOTDIR/<->_*.zsh(N); do source $file; done
