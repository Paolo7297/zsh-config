for file in $(find "$ZDOTDIR" -type f -name '-[0-9][0-9]_*.zsh' | sort -nr) ; do
  source "$file"
done

export ANTIDOTE_HOME="${ZDOTDIR}/.plugins"

source "${ZDOTDIR}/.antidote/antidote.zsh"

antidote load

for file in $(find "$ZDOTDIR" -type f -name '[0-9][0-9]_*.zsh' | sort -n) ; do
  source "$file"
done