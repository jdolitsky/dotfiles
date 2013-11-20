# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ "$OSTYPE" =~ ^darwin ]]; then
    # osx specific
    alias ls='ls -G'
else
    # linux specific
    alias ls='ls --color=auto'
    alias ssh='eval $(/usr/bin/keychain --eval --agents ssh -Q --quiet /home/svarozian/.ssh/id_rsa) && ssh'
fi

# set colors
_i=0
for _c in _black _red _green _yellow _blue _magenta _cyan _white; do
    printf -v "$_c" %s "$(tput setaf "$_i")"
    ((_i++))
done
unset _i _c
_bold=$(tput bold)
_reset=$(tput sgr0)
_ret_cols=("$_red" "$_reset")

# commands we want to run before each prompt
# set the return code as we don't care about __git_ps1's return code
PROMPT_COMMAND='_ret=$?; history -a'

# history
unset HISTFILESIZE
HISTSIZE=10000
HISTCONTROL=ignoredups
export HISTSIZE HISTCONTROL PROMPT_COMMAND
shopt -s histappend

# prompt
PS1='\[$_green\][\u@\h \[$_cyan\]\w$(__git_ps1)\[$_green\]]\[${_ret_cols[!$_ret]}\]$\[$_reset\] '

# misc
shopt -s checkwinsize
