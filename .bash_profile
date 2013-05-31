export CLICOLOR=1
export DOTBASH=~/.bash

export EDITOR='vim'
export HISTSIZE=10000
export HISTCONTROL=ignoredups

# ec2-api-tools
#export JAVA_HOME="$(/usr/libexec/java_home)"
#export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
#export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
#export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"

source $DOTBASH/colors.sh

# path
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/python:$PATH

# $HOME/bin
if [ -d ~/bin ]; then
	export PATH=:$HOME/bin:$PATH  # add your bin folder to the path, if you have it.  It's a good place to add all your scripts
fi

# bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
	. `brew --prefix`/etc/bash_completion
fi

set -o vi

# load bashrc
if [ -f $HOME/.bashrc ]; then
	source $HOME/.bashrc
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
