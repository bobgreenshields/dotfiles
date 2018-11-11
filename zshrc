# Path to your oh-my-zsh installation.
  export ZSH=/home/bobg/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

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
plugins=(git z h)

# User configuration

  export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"
  export PATH="/home/bobg/bin:$PATH"

  export EDITOR="vim"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
#
#
#
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# add chruby
#
#. /usr/local/share/chruby/chruby.sh # Load chruby
#
# rbenv

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#chruby 2.3.3
#
# copied from my bash aliases 29 Feb 2016
#
alias lg='ls -lh | grep -i'
alias lag='ls -alh | grep -i'
alias ld='ls -l | grep ^d'

# some more ls aliases
alias ll='ls -lhF'
alias lll='ls -lhF | less'
alias la='ls -lhA'
alias l='ls -CF'

alias scn='pushd /home/bobg/scans'
alias drp='pushd /home/bobg/Dropbox'
alias dnb='pushd /home/bobg/Dropbox/nicky-bob'
alias dwn='pushd /home/bobg/Downloads'
alias dsk='pushd /home/bobg/Desktop'
alias fpl='pushd /home/bobg/inv/FolgateProperties'
alias prop='pushd /home/bobg/inv/FolgateProperties/purchased-properties'

#tax aliases

alias tax="pushd ~/fin/tax/Tax1617"
alias docs="pushd ~/fin/tax/Tax1617/docs"
alias vtt="vim ~/Dropbox/todo/tax-todo.txt"
alias vdl="vim ~/fin/tax/Tax1617/docs-list.md"

#setup todo.txt

alias t=todo.sh
alias tda="todo.sh lsp a"
alias tdb="todo.sh lsp a-b"
alias td="todo.sh ls @@"

source /home/bobg/bin/todo.txt_cli-2.11.0/todo_completion complete -F _todo t
alias vtd="vim /home/bobg/Dropbox/todo/todo.txt"
export TODOTXT_DEFAULT_ACTION=l
#export TODOTXT_DEFAULT_ACTION="lsp a-b"

#alias go=gvfs-open

function go ()
{
	gvfs-open "${1}" 2> /dev/null
}

function fn ()
{
	find . -iname "*${1}*" | sort
}

function fnd ()
{
	find . -type d -iname "*${1}*" | sort
}

function fd ()
{
	find . -maxdepth 1 -iname "*${1}*" | sort
}

function fdmt ()
{
	find . -maxdepth 1 -type f -mtime "${1}" | sort
}

function fdd ()
{
	find . -maxdepth 1 -type d -iname "*${1}*" | sort
}

function fdgo ()
{
	find . -maxdepth 1 -iname "*${1}*" -print0 | xargs -0 -I {} gvfs-open {} 2> /dev/null
}

function fngo ()
{
	find . -iname "*${1}*" -print0 | xargs -0 -I {} gvfs-open {} 2> /dev/null
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
