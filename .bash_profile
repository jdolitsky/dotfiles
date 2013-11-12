export EDITOR='vim'

# $HOME/bin
if [ -d ~/bin ]; then
    export PATH=:$HOME/bin:$PATH  # add your bin folder to the path, if you have it.  It's a good place to add all your scripts
fi

if [[ "$OSTYPE" =~ ^darwin ]]; then
    # osx specific
    source ~/.bash_completion.d/git-prompt.sh
else
    # linux specific
    source /usr/share/git/completion/git-prompt.sh
    eval "$(rbenv init -)"
fi

# load bashrc
[[ -f ~/.bashrc ]] && . ~/.bashrc
