source "${HOME}/.dotfiles/INSTALL"

info "Preparing to install brew, which needs root to install."
sudo echo ""

# Launch with NONINTERACTIVE set so that it doesn't prompt for anything. We
# have a valid user session with a sudo cookie set.
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/${USER}/.zprofile

/opt/homebrew/bin/brew update
