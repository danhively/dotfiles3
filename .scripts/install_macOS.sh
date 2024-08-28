ln -sf $DOTFILES_CONFIG/zsh/.zshenv $HOME/.zshenv

ln -sf $DOTFILES_CONFIG/alacritty $XDG_CONFIG_HOME
ln -sf $DOTFILES_CONFIG/karabiner $XDG_CONFIG_HOME
ln -sf $DOTFILES_CONFIG/newsboat $XDG_CONFIG_HOME
ln -sf $DOTFILES_CONFIG/nvim $XDG_CONFIG_HOME
ln -sf $DOTFILES_CONFIG/sketchybar $XDG_CONFIG_HOME
ln -sf $DOTFILES_CONFIG/tmux $XDG_CONFIG_HOME
ln -sf $DOTFILES_CONFIG/tmuxinator $XDG_CONFIG_HOME
ln -sf $DOTFILES_CONFIG/skhd $XDG_CONFIG_HOME
ln -sf $DOTFILES_CONFIG/yabai $XDG_CONFIG_HOME

source $SCRIPTS/install_shared.sh

echo 'MacOS set up complete!'
