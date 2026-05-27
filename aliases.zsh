
alias l='ls -Alhv --color=auto --group-directories-first'
alias g='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias c='cat'
alias psg='ps -e | grep '

alias cp='cpg -g'
alias mv='mvg -g'

alias pcs='sudo pacman -S'
alias pcss='pacman -Ss'
alias pcsyu='sudo pacman -Syu'

alias gacp='git add . & git commit -m {$1} & git push'
