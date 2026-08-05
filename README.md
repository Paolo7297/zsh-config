# My zsh configuration

## Install

```zsh
git clone --recurse-submodules https://github.com/Paolo7297/zsh-config.git ~/.zsh.d
echo "ZSH_THEME=fancy" > ~/.zshenv
echo "ZDOTDIR=~/.zsh.d" >> ~/.zshenv
```

## Prompt

`ZSH_THEME` picks the Powerlevel10k config (set it in `~/.zshenv`, default `fancy`):

| value     | base prompt. |
| --------- | ------------ |
| `fancy`   | p10k classic |
| `minimal` | p10k pure    |

Both themes are customized in [-98_themes.zsh](-98_themes.zsh).
