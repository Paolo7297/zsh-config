# ls
alias ll='ls -l'
alias la='ls -la'
alias l=ll

# exa
if type eza &> /dev/null; then
  alias exa=eza
  alias ls='eza --git --group-directories-first'
  alias tree='eza --tree'
  alias ltr=tree
fi

# open
if type xdg-open &> /dev/null; then
  alias open='xdg-open'
fi

alias path='tr ":" "\n" <<< "$PATH"'

alias pem='aws ecs execute-command --cluster A3-EReceiptsIt-Api --task $(aws ecs list-tasks --cluster A3-EReceiptsIt-Api --service-name A3-EReceiptsIt-PEM-Api | jq -r ".taskArns[0]") --container pem-backend --interactive --command "/bin/bash"'
alias pel='aws ecs execute-command --cluster A3-EReceiptsIt-Api --task $(aws ecs list-tasks --cluster A3-EReceiptsIt-Api --service-name A3-EReceiptsIt-PEL-Api | jq -r ".taskArns[0]") --container pel-backend --interactive --command "/bin/bash"'
alias peld='aws ecs execute-command --cluster A3-EReceiptsIt-Api --task $(aws ecs list-tasks --cluster A3-EReceiptsIt-Api --service-name A3-EReceiptsIt-PEL-Daemon | jq -r ".taskArns[0]") --container pel-daemon --interactive --command "/bin/bash"'
alias pemd='aws ecs execute-command --cluster A3-EReceiptsIt-Api --task $(aws ecs list-tasks --cluster A3-EReceiptsIt-Api --service-name A3-EReceiptsIt-PEM-Daemon | jq -r ".taskArns[0]") --container pem-daemon --interactive --command "/bin/bash"'

alias pems='aws ecs execute-command --cluster A3-EReceiptsIt-Api-Sandbox --task $(aws ecs list-tasks --cluster A3-EReceiptsIt-Api-Sandbox --service-name A3-EReceiptsIt-PEM-Api-Sandbox | jq -r ".taskArns[0]") --container pem-backend --interactive --command "/bin/bash"'
alias pels='aws ecs execute-command --cluster A3-EReceiptsIt-Api-Sandbox --task $(aws ecs list-tasks --cluster A3-EReceiptsIt-Api-Sandbox --service-name A3-EReceiptsIt-PEL-Api-Sandbox | jq -r ".taskArns[0]") --container pel-backend --interactive --command "/bin/bash"'
alias pelds='aws ecs execute-command --cluster A3-EReceiptsIt-Api-Sandbox --task $(aws ecs list-tasks --cluster A3-EReceiptsIt-Api-Sandbox --service-name A3-EReceiptsIt-PEL-Daemon-Sandbox | jq -r ".taskArns[0]") --container pel-daemon --interactive --command "/bin/bash"'
alias pemds='aws ecs execute-command --cluster A3-EReceiptsIt-Api-Sandbox --task $(aws ecs list-tasks --cluster A3-EReceiptsIt-Api-Sandbox --service-name A3-EReceiptsIt-PEM-Daemon-Sandbox | jq -r ".taskArns[0]") --container pem-daemon --interactive --command "/bin/bash"'
