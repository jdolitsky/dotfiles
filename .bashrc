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

# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
export VIRTUALENV_DISTRIBUTE=1
source /usr/local/bin/virtualenvwrapper_lazy.sh

# alias
alias ls='ls -G'
alias ssh='TERM=xterm-256color ssh'


# misc
shopt -s checkwinsize
