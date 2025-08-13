# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# -------------------------------------------------- settings
export PS1='\u@\h(\e[1;32m\j\e[0m) (\e[1;36m\A\e[0m) (\e[1;35m\W\e[0m) \$ '

export EDITOR="/usr/bin/vim -i NONE"
export VIEWER="/usr/bin/vim -R -i NONE"
export LESSHISTFILE="/dev/null"

export PYTHON_HISTORY="/dev/null"

export HISTIGNORE="cl:clear:cd*:ls*"
export HISTTIMEFORMAT="%d.%m.%y %k:%M --- "
export HISTFILESIZE=1024

export LYNX_CFG="~/.lynxrc"

LS_COLORS='rs=00:fi=00;97:di=00;34:ex=01;32:ln=01;35:or=01;31:pi=01;36:bd=01;36:cd=01;36:so=01;36:*.pdf=02;33:*.djvu=02;33'
export LS_COLORS

if [ $TERM == "linux" ]; then
    setfont -d cyr-sun16
else
    xset r rate 350 75
    setxkbmap -layout us,ru
    setxkbmap -option 'grp:alt_shift_toggle'
fi

# -------------------------------------------------- alias
alias bshrc="$EDITOR ~/.bashrc && source ~/.bashrc"

alias vim="vim -i NONE"
alias cl="printf '\ec'"
alias rm="rm -iv"
alias mv="mv -i"
alias cp="cp -i"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias less="less -N --use-color"
alias cal="cal -3"
alias sxivr="sxiv -afpr"

alias objdump="objdump -dwz -M intel --insn-width=10"
alias gdb="gdb -q -tui"

alias pmg="pamixer --get-volume"
alias pms="pamixer --allow-boost --set-volume"
alias pmt="pamixer -t"

function transmission
{
    local torrent="$1";
    local out="$2";

    if [ -e "$torrent" -a -d "$2" ]
    then
        transmission-cli "$1" -w "$2" > /dev/null 2>&1 &
    else
        echo "$1 does not exist"
    fi
}

