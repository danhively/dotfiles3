fpath=($ZDOTDIR/external $fpath)

# history setup
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY

# autocompletion using arrow keys (based on history)
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

# try j k for arrows history autocomplete
#bindkey -M vicmd "j" up-line-or-beginning-search
#bindkey -M vicmd "k" down-line-or-beginning-search

zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

autoload -Uz compinit; compinit
_comp_options+=(globdots) # With hidden files
source $DOTFILES_CONFIG/zsh/external/completion.zsh

autoload -Uz prompt_purification_setup && prompt_purification_setup

# Push the current directory visited on to the stack.
setopt AUTO_PUSHD
# Do not store duplicate directories in the stack
setopt PUSHD_IGNORE_DUPS
# Do not print the directory stack after using
setopt PUSHD_SILENT

bindkey -v
export KEYTIMEOUT=1

#autoload -Uz cursor_mode && cursor_mode

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

source $DOTFILES_CONFIG/zsh/external/bd.zsh

if [ "$(tty)" = "/dev/tty1" ];
then
#    pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi

#source $DOTFILES_CONFIG/scripts.sh

source $SCRIPTS/set_os.sh

# Perform actions based on the value of CURRENT_OS
case "$CURRENT_OS" in
    macOS)
        echo "You are on macOS."
        source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
        source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
        source <(fzf --zsh)
        ;;

    arch)
        echo "You are on Arch Linux."
        if [ $(command -v "fzf") ]; then
            source /usr/share/fzf/completion.zsh
            source /usr/share/fzf/key-bindings.zsh
        fi

        source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
        source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
        ;;

    debian)
        echo "You are on Debian-based Linux."
        ;;

    *)
        echo "Unknown or unsupported OS: $CURRENT_OS"
        ;;
esac

if [ -f $SCRIPTS/import_aliases_functions_modules.sh ]; then
    echo 'Sourcing from .zshrc'
    source $SCRIPTS/import_aliases_functions_modules.sh
fi

export PATH=$PATH:/opt/homebrew/bin
