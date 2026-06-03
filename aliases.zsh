#built in stuff
alias l='ls -Alhv --color=auto --group-directories-first'
alias g='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias c='cat'

#advanced cp/mv
alias cp='cpg -g'
alias mv='mvg -g'

#pacman stuff
alias pcs='sudo pacman -S'
alias pcss='pacman -Ss'
alias pcsyu='sudo pacman -Syu'

#git stuff
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
