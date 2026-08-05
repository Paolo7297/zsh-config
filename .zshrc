export ANTIDOTE_HOME="${ZDOTDIR}/.plugins"

for file in $ZDOTDIR/-<->_*.zsh(N); do source $file; done

source "${ZDOTDIR}/.antidote/antidote.zsh"
antidote load

for file in $ZDOTDIR/<->_*.zsh(N); do source $file; done
