[ -z "$PS1" ] && return

# prompt
export PS1="\[$txtgrn\][\u@\h \[$txtcyn\]\w\$(__git_ps1)\[$txtgrn\]]\[$txtrst\]$ "

# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
export VIRTUALENV_DISTRIBUTE=1
source /usr/local/share/python/virtualenvwrapper_lazy.sh

# alias
alias ls='ls -G'
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# misc
shopt -s checkwinsize
