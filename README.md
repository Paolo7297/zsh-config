# My zsh configuration

## Install
```zsh
git clone --recurse-submodules https://github.com/Paolo7297/zsh-config.git ~/.zsh.d
echo "ZDOTDIR=~/.zsh.d" > ~/.zshenv
```

## Prompt

`ZSH_THEME` picks the Powerlevel10k config (set it in `~/.zshenv`, default `fancy`):

| value     | prompt                                                            |
| --------- | ----------------------------------------------------------------- |
| `fancy`   | powerline classic + customizations ([-98_p10k.zsh](-98_p10k.zsh)) |
| `minimal` | stock p10k pure                                                   |

Both are sourced from the vendored p10k configs, so plugin updates carry over.
`p10k configure` writes `-99_p10k-custom.zsh`, which overrides `-98_p10k.zsh`.
