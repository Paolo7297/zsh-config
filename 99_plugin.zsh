# Zoxide (z pathname)
if type zoxide &> /dev/null; then
  eval "$(zoxide init zsh)"
fi

# Terraform
if [[ -e "/usr/bin/terraform" ]]; then
  complete -C /usr/bin/terraform terraform
fi

# Show autosuggestions with OneHalfDark theme
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=243'
