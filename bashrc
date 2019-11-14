
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
# Local aliases/configurations
# This file is ignored by the git repository, so it's
# mostly for per-server configurations
[ -f ~/.bash/local ] && . ~/.bash/local

export EDITOR=vim

# Dir colors for OSX
export CLICOLOR=yes
export LSCOLORS=Exfxbxdxcxegedabagacad

# Paths
#export PATH=/usr/sbin:/sbin:$HOME/bin:$HOME/bin/git:$HOME/pear:$HOME/sys/bin:$HOME/bin/swd:/var/lib/gems/1.8/bin:/usr/local/mysql/bin:/Users/mcreenan/.rakudobrew/moar-nom/install/share/perl6/site/bin:/Users/mcreenan/.rakudobrew/bin/:$PATH
#export PATH=/usr/sbin:/sbin:$HOME/bin:$HOME/bin/git:$HOME/pear:$HOME/sys/bin:$HOME/bin/swd:/var/lib/gems/1.8/bin:/usr/local/mysql/bin:/Applications/Rakudo/bin:/Applications/Rakudo/share/perl6/site/bin:/Users/mcreenan/.rakudobrew/bin/:$PATH
export PATH=/usr/sbin:/usr/local/sbin:/sbin:$HOME/bin:$HOME/bin/git:$HOME/pear:$HOME/sys/bin:$HOME/bin/swd:/var/lib/gems/1.8/bin:/usr/local/mysql/bin:/Applications/Rakudo/bin:/Applications/Rakudo/share/perl6/site/bin:$PATH
export PYTHONPATH=/usr/local/lib/python2.7/site-packages

# Editor
EDITOR='vim'

# Need for 256 color support in screen+vim
set t_Co=256
TERM=xterm-256color

# Prompt
if [ ! -n "$PSCOLOR" ]; then PSCOLOR=28; fi
if [ ! -n "$PSHOST" ]; then PSHOST="\h"; fi
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
source ~/.git-prompt.sh 
#export PS1="\n╭╴\[\e[38;5;${PSCOLOR}m\]$PSHOST\[\e[38;5;231m\]:\[\e[38;5;240m\]\w \[\e[38;5;231m\] $(__git_ps1)\r\n\[\e[38;5;231m\]╰→\[\e[0m\] "
export PS1="\[\033[38;5;232m\]\[\033[48;5;253m\] \t \[$(tput sgr0)\]\[\033[38;5;253m\]\[\033[48;5;32m\]\[$(tput sgr0)\]\[\033[48;5;32m\]\[\033[38;5;253m\] \w \[$(tput sgr0)\]\[\033[38;5;32m\]\[\033[48;5;0m\]\[$(tput sgr0)\]\[\033[38;5;15m\]\[\033[48;5;-1m\] \[$(tput sgr0)\]"

if [[ "$OSTYPE" == "linux-gnu" ]]; then
	eval $(dircolors -b ~/.dircolors)
fi

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
source /usr/local/bin/virtualenvwrapper.sh

# Powerline
export POWERLINE_CONFIG_COMMAND="/usr/local/bin/powerline-config"
export POWERLINE_COMMAND=powerline


# Aliases
[ -f ~/.bash/aliases ] && . ~/.bash/aliases
[ -f ~/.bash/localaliases ] && . ~/.bash/localaliases

# Utilities
[ -f ~/.bash/git-completion ] && . ~/.bash/git-completion

# Set tab color in iTerm
#echo -e "\033]6;1;bg;red;brightness;255\a" 
#echo -e "\033]6;1;bg;green;brightness;255\a" 
#echo -e "\033]6;1;bg;blue;brightness;255\a"
# Set iTerm title
function title ()
{
	TITLE=$*;
	export PROMPT_COMMAND='echo -ne "\033]0;$TITLE\007"'
}
title "localhost"
export EDC_ENVIRONMENT=local

_complete_ssh_hosts ()
{
        COMPREPLY=()
        cur="${COMP_WORDS[COMP_CWORD]}"
        comp_ssh_hosts=`cat ~/.ssh/known_hosts | \
                        cut -f 1 -d ' ' | \
                        sed -e s/,.*//g | \
                        grep -v ^# | \
                        uniq | \
                        grep -v "\[" ;
                cat ~/.ssh/config | \
                        grep "^Host " | \
                        awk '{print $2}'
                `
        COMPREPLY=( $(compgen -W "${comp_ssh_hosts}" -- $cur))
        return 0
}
complete -F _complete_ssh_hosts ssh


. /Users/mcreenan/torch/install/bin/torch-activate

PATH="/Users/mcreenan/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/mcreenan/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/mcreenan/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/mcreenan/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/mcreenan/perl5"; export PERL_MM_OPT;

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
