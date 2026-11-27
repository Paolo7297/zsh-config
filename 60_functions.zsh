function config-update {
  git -C "$ZDOTDIR" pull --recurse-submodules && print -P '%F{green}Configuration updates complete.%f\n'
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
		brew update && brew upgrade -y && brew cleanup
	fi

  config-update

  antidote update -b
}