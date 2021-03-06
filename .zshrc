# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="miloshadzic"
# ZSH_THEME="avit"
# ZSH_THEME="wedisagree"
ZSH_THEME="bullet-train"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras npm vagrant composer brew bower)

source $ZSH/oh-my-zsh.sh

### personal work
source $HOME/Vagrant/CentOS/Staffingnation/ec2beds-config/dev/.devopsrc

######
#Paths
######
# aliases
source $HOME/.dotfiles/aliases.zsh

# golang
source $HOME/.dotfiles/go/gopath.zsh

# ruby
source $HOME/.dotfiles/ruby/ruby.zsh

# path
source $HOME/.dotfiles/path/path.zsh

# git
source $HOME/.dotfiles/git/git.zsh

# docker
source $HOME/.dotfiles/docker/docker.zsh

# aws stuff
source $HOME/.dotfiles/keys/aws/aws.zsh

# digitalocean stuff
source $HOME/.dotfiles/keys/digitalocean/digitalocean.zsh

# ansible
source $HOME/.dotfiles/ansible/ansible.zsh

#BULLETTRAIN_PROMPT_CHAR=\➤
BULLETTRAIN_PROMPT_CHAR=🐈

# homebrew paths
export PATH="/usr/local/sbin:$PATH"
