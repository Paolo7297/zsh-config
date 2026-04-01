function config-update {
  OLDDIR=$(pwd)

  local green normal
  if (( $+commands[tput] ))
  then
    green=$(tput setaf 2)
    normal=$(tput sgr0)
  else
    green=$'\E[32m'
    normal=$'\E[0m'
  fi

  cd "$ZDOTDIR"
  git pull
  cd "$OLDDIR"

  print "${green}Configuration updates complete.${normal}"
  print ""
}

function upd {
	if type apt &> /dev/null; then
		sudo apt update && sudo apt upgrade
	fi

	if type pacman &> /dev/null; then
		if type yay &> /dev/null; then
			yay -Syu
		else
			sudo pacman -Syu
		fi
	fi

	if type brew &> /dev/null; then
		brew update && brew upgrade && brew upgrade --cask && brew cleanup
	fi

  config-update

  antidote update -b
}