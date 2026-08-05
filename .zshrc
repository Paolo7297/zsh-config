# Powerlevel10k instant prompt. Keep at the top.
_p10k_instant=${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh
[[ -r $_p10k_instant ]] && source $_p10k_instant
unset _p10k_instant

for file in $(find "$ZDOTDIR" -type f -name '-[0-9][0-9]_*.zsh' | sort -nr) ; do
  source "$file"
done

export ANTIDOTE_HOME="${ZDOTDIR}/.plugins"

source "${ZDOTDIR}/.antidote/antidote.zsh"

antidote load

for file in $(find "$ZDOTDIR" -type f -name '[0-9][0-9]_*.zsh' | sort -n) ; do
  source "$file"
done