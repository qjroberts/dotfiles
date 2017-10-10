#!/bin/bash

###
# Set up Homebrew
###

# Install Homebrew
if test ! $(which brew); then
  echo "Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew
brew update

###
# Update Bash (needed?)
###

# Update unix tools
echo "Updating Bash utils"
brew install coreutils
brew install findutils
brew install bash

brew install grep --with-default-names
$PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

###
# Install binaries
###
binaries=(
  git
  vim
)

echo "Installing binaries..."
brew install ${binaries[@]}

###
# Install apps
###
brew tap caskroom/cask

apps=(
  google-chrome
  iterm2
  sublime-text
  pgadmin3
  spectacle
)

echo "Installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# Cleanup!
brew cleanup

###
# Set up oh-my-zsh
###
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

###
# Set up dotfiles
###

# Get currect directory
source="${BASH_SOURCE[0]}"
while [ -h "$source" ]; do
  dirname="$( cd -P "$( dirname "$source" )" && pwd )"
  source="$(readlink "$source")"
  [[ $source != /* ]] && source="$dirname/$source"
done
dirname="$( cd -P "$( dirname "$source" )" && pwd )"

dotfiles=(
  ".gitconfig"
  ".zshrc"
  ".vimrc"
  ".vim"
)

echo "Setting up dotfiles..."
for file in ${dotfiles[@]}; do
  ln -sf "$dirname/$file" $HOME
done
