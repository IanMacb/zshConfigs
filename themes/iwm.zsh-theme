
plugins=(
    git
    python
    catimg
    kitty
)

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}⌥"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT="%F{yellow}[%T]%F{red}%n%F{white}@%F{cyan}%m%F{white}%F{green}%d\$(git_prompt_info)%F{white}%# "
