# Prompt theme: ZSH_THEME=fancy (customized p10k classic) | minimal (p10k pure)
_p10k_config=$ZDOTDIR/.plugins/romkatv/powerlevel10k/config

case ${ZSH_THEME:-fancy} in
minimal)
  source $_p10k_config/p10k-pure.zsh

  # ------------------ customizations on top of upstream pure ------------------
  # snazzy colors, 24h time on the right, compact, transient_prompt.
  typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time newline)
  typeset -g POWERLEVEL9K_DIR_FOREGROUND='#57C7FF'
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='#F3F99D'
  typeset -g POWERLEVEL9K_CONTEXT_ROOT_TEMPLATE='%F{#F1F1F0}%n%f%F{242}@%m%f'
  typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VICMD,VIVIS}_FOREGROUND='#FF6AC1'
  typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_{VIINS,VICMD,VIVIS}_FOREGROUND='#FF5C57'
  typeset -g POWERLEVEL9K_VCS_{INCOMING,OUTGOING}_CHANGESFORMAT_FOREGROUND='#9AEDFE'
  ;;
*)
  source $_p10k_config/p10k-classic.zsh

  # ---------------- customizations on top of upstream classic ----------------
  # nerdfont-v3 + powerline, small icons, unicode, dark, 24h time, angled
  # separators, sharp heads, flat tails, 2 lines, disconnected, no frame,
  # compact, many icons, fluent, transient_prompt.
  typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs newline prompt_char)
  # drop aws_eb_env, add time (newline is upstream's last right-prompt element)
  typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
    ${POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS:#(aws_eb_env|newline)} time newline)

  typeset -g POWERLEVEL9K_MODE=nerdfont-v3
  typeset -g POWERLEVEL9K_ICON_PADDING=moderate

  # no frame
  typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=
  typeset -g POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_PREFIX=
  typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=
  typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_SUFFIX=
  typeset -g POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_SUFFIX=
  typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_SUFFIX=

  typeset -g POWERLEVEL9K_BACKGROUND=236
  typeset -g POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='%244F\uE0B1'
  typeset -g POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR='%244F\uE0B3'

  typeset -g POWERLEVEL9K_VCS_BRANCH_ICON='\uF126 '
  typeset -g POWERLEVEL9K_VCS_PREFIX='%246Fon '

  typeset -g POWERLEVEL9K_STATUS_OK=false
  typeset -g POWERLEVEL9K_STATUS_ERROR=false
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_PREFIX='%246Ftook '
  typeset -g POWERLEVEL9K_CONTEXT_PREFIX='%246Fwith '
  typeset -g POWERLEVEL9K_KUBECONTEXT_PREFIX='%246Fat '
  typeset -g POWERLEVEL9K_TOOLBOX_PREFIX='%246Fin '
  typeset -g POWERLEVEL9K_TIME_PREFIX='%246Fat '

  # aws segment: always shown, profile only (no region)
  unset POWERLEVEL9K_AWS_SHOW_ON_COMMAND
  typeset -g POWERLEVEL9K_AWS_CONTENT_EXPANSION='${P9K_AWS_PROFILE//\%/%%}'

  unset POWERLEVEL9K_BATTERY_STAGES  # upstream declares it as an array
  typeset -g POWERLEVEL9K_BATTERY_STAGES='\UF008E\UF007A\UF007B\UF007C\UF007D\UF007E\UF007F\UF0080\UF0081\UF0082\UF0079'
  ;;
esac

# shared by both themes: compact, transient prompt, quiet instant prompt
typeset -g POWERLEVEL9K_PROMPT_ADD_NEWLINE=false
typeset -g POWERLEVEL9K_TRANSIENT_PROMPT=always
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# discard `p10k configure` output instead of letting it overwrite this file
typeset -g POWERLEVEL9K_CONFIG_FILE=/dev/null
unset _p10k_config
