# For dotfiles
export XDG_CONFIG_HOME="$HOME/.config"

# For specific data
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"

# For cached files
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export EDITOR="nvim"
export VISUAL="nvim"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# History filepath
export HISTFILE="$ZDOTDIR/.zhistory"
# Maximum events for internal history
export HISTSIZE=10000
# Maximum events in history file
export SAVEHIST=10000

# DO NOT ADD .zhistory to Git

############
# Personal #
############

# Directories
export REPOS="$HOME/code"
export DOTFILES="$REPOS/dotfiles"
export LAB="$REPOS/homelab"
export ALIASES="$DOTFILES/.aliases"
export DOTFILES_CONFIG="$DOTFILES/.config"
export FUNCTIONS="$DOTFILES/.functions"
export MODULES="$DOTFILES/.modules"
export SCRIPTS="$DOTFILES/.scripts"

# Docker
export FORMAT="\nID\t{{.ID}}\nIMAGE\t{{.Image}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.RunningFor}}\nSTATUS\t{{.Status}}\nPORTS\t{{.Ports}}\nNames\t{{.Names}}\n"

# Keyboards
export PREONIC=preonic/rev3_drop
export PLANCK=planck/rev6

# Kubernetes
export KUBECONFIG=~/.kube/config
