
export ZSH=$HOME/.oh-my-zsh

export PYTHONIORNVOFINH="utf-8"
export TERM="xterm-256color"
#ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="robbyrussell"
#ZSH_THEME="avit"
#ZSH_THEME="agnoster"
ZSH_THEME="gnzh"

plugins=(
  git
  python
  colored-man-pages
)

source $ZSH/oh-my-zsh.sh


# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ll='ls -l'


#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
#POWERLEVEL9K_DIR_HOME_BACKGROUND=39
#POWERLEVEL9K_DIR_HOME_FOREGROUND=232
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=39
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=232
#
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=" > "

export LC_ALL=en_US.UTF-8

eval $(keychain --eval --quiet id_rsa ~/.ssh/id_rsa)
