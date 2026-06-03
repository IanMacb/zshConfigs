function check_last_exit_code() {
  local LAST_EXIT_CODE=$?
  local EXIT_CODE_PROMPT=' '
  EXIT_CODE_PROMPT+="%{$fg[cyan]%}[%{$reset_color%}"
  if [[ $LAST_EXIT_CODE -ne 0 ]]; then
    EXIT_CODE_PROMPT+="%{$fg[red]%}$LAST_EXIT_CODE%{$reset_color%}"
  else
    EXIT_CODE_PROMPT+="%{$fg[green]%}$LAST_EXIT_CODE%{$reset_color%}"
  fi
  EXIT_CODE_PROMPT+="%{$fg[cyan]%}]%{$reset_color%}"
      echo $EXIT_CODE_PROMPT
}


#function expand_aliases() {
#    setopt localoptions
#    local RED='\033[0;31m'
#    local YEL='\033[0;33m'
#    local NC='\033[0m'
#
#    functions[_expand_aliases]=$1
#    (($+functions[_expand_aliases])) &&
#    BUFFER=${functions[_expand_aliases]#$'\t'} &&
#    if [ $BUFFER != $1 ]; then
#        echo -e "${YEL}EXPANDED: \"${1}\"${NC} = ${RED}${BUFFER}${NC}"
#    fi
#}

function pyclean() {
    for f in $(find . -name "*pyc")
        rm -f $f
}

my_chpwd_hook() ls -Alhv --group-directories-first
chpwd_functions+=( my_chpwd_hook )


function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	command rm -f -- "$tmp"
}
