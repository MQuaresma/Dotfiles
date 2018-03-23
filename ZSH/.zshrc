# Environment variables
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sicstus4.3.0/bin:$PATH

export ZSH=~/.oh-my-zsh

export EDITOR=vim

# Set this to "random" to load a random theme each time
ZSH_THEME="powernex"

# Update frequency
export UPDATE_ZSH_DAYS=7

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# ssh-agent autostart
eval "$(<~/.ssh-agent-config)" >> /dev/null
# export SSH_KEY_PATH="~/.ssh/rsa_id"

#Aliases
alias sicstus="rlwrap sicstus"
