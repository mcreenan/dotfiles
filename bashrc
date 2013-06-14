# Local aliases/configurations
# This file is ignored by the git repository, so it's
# mostly for per-server configurations
[ -f ~/.bash/local ] && . ~/.bash/local

# Paths
export PATH=/usr/local/bin:/usr/sbin:/sbin:$HOME/bin:$HOME/bin/git:$HOME/pear:$HOME/sys/bin:$PATH

# Editor
export EDITOR='vim'

# Need for 256 color support in screen+vim
set t_Co=256
export TERM=putty-256color

# Prompt
if [ ! -n "$PSCOLOR" ]; then export PSCOLOR=28; fi
if [ ! -n "$PSHOST" ]; then export PSHOST="\h"; fi
#C_SEP="⮀"
#C_SEP_THIN="⮁"
#export PS0='%{git> %b %c %u %f %t%} '
#MYPROMPT="\[\e[48;5;${PSCOLOR}m\e[38;5;255m\] ${PSHOST} "
#MYPROMPT+="\[\e[48;5;234m\e[38;5;${PSCOLOR}m\]${C_SEP} "
#MYPROMPT+="\[\e[48;5;234m\]\[\e[38;5;255m\]\w "
#MYPROMPT+="\n\[\e[48;5;0m\]\[\e[38;5;255m\]$ "
#MYPROMPT+="\[\e[0m\]"
#MYPROMPT+="\[\e[48;5;0m\]\[\e[38;5;250m\]"
#export PS1=$MYPROMPT
export PS1="\n\[\e[38;5;${PSCOLOR}m\]$PSHOST\[\e[38;5;231m\]:\[\e[38;5;240m\]\w \[\e[38;5;231m\]\r\n\[\e[38;5;231m\]#\[\e[0m\] "
eval $(dircolors -b ~/.dircolors)

#function _update_ps1()
#{
#	export PS1="$(~/.bash/powerline-bash.py $?)"
#}
#export PROMPT_COMMAND="_update_ps1"

# Aliases
[ -f ~/.bash/aliases ] && . ~/.bash/aliases
[ -f ~/.bash/localaliases ] && . ~/.bash/localaliases

# Utilities
[ -f ~/.bash/git-completion ] && . ~/.bash/git-completion

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
