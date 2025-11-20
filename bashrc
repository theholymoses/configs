# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# -------------------------------------------------- settings
export PS1='\u@\h(\e[0;36m\W\e[0m)[\e[0;35m\j\e[0m] \$ '

export LESSHISTFILE="/dev/null"
export PYTHON_HISTORY="/dev/null"

export HISTIGNORE="cl:clear"
export HISTTIMEFORMAT="%d.%m.%y %k:%M --- "
export HISTFILESIZE=65536

export LYNX_CFG="~/.lynxrc"

LS_COLORS='rs=00:fi=00;97:di=00;34:ex=00;32:ln=00;35:or=00;31:pi=00;36:bd=00;36:cd=00;36:so=00;36:*.pdf=02;33:*.djvu=02;33'
export LS_COLORS

if [ "$TERM" == "linux" ]; then
    setfont -d cyr-sun16
else
    xset r rate 350 75
    setxkbmap -layout us,ru
    setxkbmap -option 'grp:alt_shift_toggle'
fi

# -------------------------------------------------- alias
alias vim="/usr/bin/vim -i NONE"

export EDITOR="vim"
export VIEWER="vim -R"

alias src="source ~/.bashrc"
alias vsrc="vim ~/.bashrc && src"

alias cl="printf '\ec'"
alias rm="rm -iv"
alias mv="mv -iv"
alias cp="cp -iv"
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias less="less -N --use-color"

alias cal="cal -3"

unset DEBUGINFOD_URLS
alias gdb="gdb -q -tui --args"
alias q64="qemu-system-x86_64"
alias q32="qemu-system-i386"

alias pmg="pamixer --get-volume"
alias pms="pamixer --allow-boost --set-volume"
alias pmt="pamixer -t"

alias sxiv="sxiv -afpr"

alias x="xdg-open"

# $1 file
# $2 [symbol]
function dis
{
    local file=${1:?"Нет файла"}

    local cmd="objdump ${file} -Dwz -M intel --insn-width=10 --visualize-jumps --disassemble"
    if [ -n "$2" ]; then
        cmd="${cmd}=${2}"
    fi
 
    eval "$cmd"
}

GREP_DEFAULT_FLAGS="-PTHrn"
# $1 - регулярка
# $2 - путь
# $3 - доп.флаги
function g
{
    local regex=${1:?"Не введена регулярка"}
    local path="."
    local additional_flags=""

    if [ -n "$2" ]; then
        if [ ${2:0:1} == '-' ]; then
            additional_flags="$2"
        else
            path="$2"
        fi
    fi

    local cmd="grep ${path} ${GREP_DEFAULT_FLAGS} -e \"${regex}\""

    if [ -n "$additional_flags" ]; then
        cmd="${cmd} ${additional_flags}"
    fi

    eval "$cmd"
}

# $1 dir
function gen_tags
{
    local path=${1:-'.'}
    path=$(realpath $path)

    if [ ! -d "$path" ]; then
        echo "Директория ${path} не существует"
        return
    fi

    cd "$path"
    find ~+ -regextype egrep -iregex '.*\.(h|cc?)$' | ctags --totals=yes --sort=yes -f ~/.vim/tags -L-
    cd -
}

function trnsm
{
    local torrent=${1:?"Не введен торрент-файл"}
    if [ ! -e "$torrent" ]; then
        echo "Файл ${torrent} не существует"
        return
    fi

    local out=${2:-'.'}
    out=$(realpath "$out")
    if [ ! -d "$out" ]; then
        echo "Директория ${out} не существует"
        return
    fi

    transmission-cli "$torrent" -w "$out" > /dev/null 2>&1 &
}

source ~/baum/.baum_alias
