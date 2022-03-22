source "${HOME}/.dotfiles/INSTALL"

info "Fetching vim-plug, the vim plugin manager"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

info "Installing vim-plug plugins this will take a minute\n"

# Run nvim in silent and install the vim-plug plugins eating output
act 'nvim -e +PlugInstall' || \
  error 'vim-plug install failed. Run :PlugInstall in vim to finish\n'

info "Done installing vim-plug and plugins!\n"
