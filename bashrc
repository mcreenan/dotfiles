# Paths
export PATH=/usr/sbin:/sbin:$HOME/bin:$HOME/bin/git:$HOME/pear:$HOME/sys/bin:$PATH

# Editor
export EDITOR='vim'

# Need for 256 color support in screen+vim
set t_Co=256
export TERM=putty-256color

# Prompt
export PSCOLOR="28"
export PS0='%{git> %b %c %u %f %t%} '
export PS1="\[\e[38;5;${PSCOLOR}m\]\h\[\e[38;5;231m\]:\[\e[38;5;${PSCOLOR}m\]\w \[\e[38;5;231m\]\r\n\[\e[38;5;231m\]#\[\e[0m\] "

# Aliases
[ -f ~/.bash/aliases ] && . ~/.bash/aliases
[ -f ~/.bash/localaliases ] && . ~/.bash/localaliases

# Utilities
[ -f ~/.bash/git-completion ] && . ~/.bash/git-completion

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi