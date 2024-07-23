# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export VOLTA_HOME="$HOME/.volta"

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH=/usr/local/opt/mongodb-community@3.6/bin:/home/mcreenan/bin:/home/mcreenan/rakudo/bin/:/usr/local/Cellar/python@2/2.7.15/Frameworks/Python.framework/Versions/2.7/bin:/home/mcreenan/Library/Python/3.7/bin:/home/mcreenan/.local:/home/mcreenan/bin:$PATH
export PATH=/home/mcreenan/.config/yarn/global/node_modules/.bin:$PATH
export PATH=/home/mcreenan/.local:$PATH
export PATH=/home/mcreenan/.local/bin:$PATH
export PATH=/home/mcreenan/.yarn/bin:$PATH
export PATH=/home/mcreenan/bin:$PATH
export PATH=/snap/bin/:$PATH
export PATH=/home/mcreenan/rakudo/bin/:$PATH
export PATH=/bin:/sbin:/usr/bin:/usr/local/bin:/usr/local/go/bin:/usr/local/opt/fzf/bin:/usr/sbin:$PATH
export PATH=/home/mcreenan/.pyenv/bin:$PATH
export PATH=/home/mcreenan/.pyenv/shims:$PATH
export PATH=/home/mcreenan/.rbenv/shims:$PATH
export PATH=$PATH:/usr/local/go/bin
export PATH="$VOLTA_HOME/bin:$PATH"  # Volta must be first, but if no default node version specific, it will fall back
export PATH=$PATH:/home/mcreenan/.nvm/versions/node/v16.13.0/bin/
export PATH=$PATH:/mnt/c/Windows/System32
export PATH=/opt/nvim-linux64/bin:$PATH

# Fix for openssl stupidity with python
export DYLD_LIBRARY_PATH=/usr/local/opt/openssl/lib:$DYLD_LIBRARY_PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/mcreenan/.oh-my-zsh

# Make python not generate pyc files at all
export PYTHONDONTWRITEBYTECODE=1

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{240}┌"
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%F{240}└%F{255}⟫%F{250}⟫%F{245}⟫%F{240}⟫%F{235}⟫%f "
POWERLEVEL9K_SHORTEN_DIR_LENGTH=5
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vcs virtualenv dir)
POWERLEVEL9K_DIR_HOME_BACKGROUND="233"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="233"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="233"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_VIRTUALENV_BACKGROUND="018"
POWERLEVEL9K_VIRTUALENV_FOREGROUND="white"
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S}"
POWERLEVEL9K_TIME_BACKGROUND="black"
POWERLEVEL9K_TIME_FOREGROUND="249"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHOW_CHANGESET=false
POWERLEVEL9K_CHANGESET_HASH_LENGTH=6

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git catimg dircycle python sudo jira aws virtualenv celery zsh-syntax-highlighting tmuxinator docker)

source $ZSH/oh-my-zsh.sh
source ~/.zsh-aliases
source ~/.zsh-local

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
  . ~/.config/exercism/exercism_completion.zsh
fi

# This speeds up pasting w/ autosuggest
# https://github.com/zsh-users/zsh-autosuggestions/issues/238
pasteinit() {
	  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
	    zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
	  zle -N self-insert $OLD_SELF_INSERT
}

macnst (){
	netstat -Watnlv | grep LISTEN | awk '{"ps -o comm= -p " $9 | getline procname;colred="\033[01;31m";colclr="\033[0m"; print colred "proto: " colclr $1 colred " | addr.port: " colclr $4 colred " | pid: " colclr $9 colred " | name: " colclr procname;  }' | column -t -s "|"
}

zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(pyenv init -)"
eval "$(pyenv init --path)"

# Direnv
eval "$(direnv hook zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
export PATH=${PATH}:${NVM_HOME}
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Autojump
[[ -s /home/mcreenan/.autojump/etc/profile.d/autojump.sh ]] && source /home/mcreenan/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

export PATH=$HOME/bin:$PATH
export TILT_REPO_ROOT="/home/mcreenan/r"
# Make sure ssh-agent is running and default identity is added to it
eval `ssh-agent -s | sed "/^echo/d"`;
ssh-add -q;

# Github copilot cli aliases
command -v github-copilot-cli >/dev/null && eval "$(github-copilot-cli alias -- "$0")"
# Enable torch shell completion
# eval "$(_TORCH_COMPLETE=zsh_source torch)"
