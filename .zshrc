# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="fino-time"
ZSH_THEME="gnzh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(sudo git z themes zsh-syntax-highlighting)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

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

#remove proxy for local network
export no_proxy="localhost,127.0.0.1,.iitb.ac.in,.com"

alias todo='gvim ~/Dropbox/todo.txt'
alias diary='gvim ~/Dropbox/diary.json'
alias tt='gvim ~/Dropbox/schedule.txt'
alias code='cd ~/coding'
alias btv='cd ~/coding/BodhiTree;source venv/bin/activate;cd venv/elearning_academy'
alias bt='cd ~/coding/BodhiTree/venv/elearning_academy'

#login to iitb ldap
alias loginldap='sh ~/loginldap.sh'

#extract compressed files
function extract()      # Handy Extract Program
{
if [ -f $1 ] ; then
case $1 in
    *.tar.bz2)   tar xvjf $1     ;;
    *.tar.gz)    tar xvzf $1     ;;
    *.bz2)       bunzip2 $1      ;;
    *.rar)       unrar x $1      ;;
    *.gz)        gunzip $1       ;;
    *.tar)       tar xvf $1      ;;
    *.tbz2)      tar xvjf $1     ;;
    *.tgz)       tar xvzf $1     ;;
    *.zip)       unzip $1        ;;
    *.Z)         uncompress $1   ;;
    *.7z)        7z x $1         ;;
    *)           echo "'$1' cannot be extracted via >extract<" ;;
    esac
else
    echo "'$1' is not a valid file!"
fi
}

alias vim=gvim

export PATH=~/bin:$PATH

# gnome-keyring git
if [[ -z $DBUS_SESSION_BUS_ADDRESS ]]; then
    if [[ -f ~/.dbus/session-bus/$(dbus-uuidgen --get)-0 ]]; then
        source ~/.dbus/session-bus/$(dbus-uuidgen --get)-0
        export DBUS_SESSION_BUS_ADDRESS
    fi
fi

# fuck plugin
alias fuck='$(thefuck $(fc -ln -1))'
alias FUCK='fuck'

