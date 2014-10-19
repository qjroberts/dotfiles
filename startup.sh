#!/bin/bash

###
# Set up Homebrew
###

# Install Homebrew
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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

brew tap homebrew/dupes
brew install homebrew/dupes/grep
$PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

###
# Install binaries
###
binaries=(
  node
  ack
  hub
  git
)

echo "Installing binaries..."
brew install ${binaries[@]}

# Cleanup!
brew cleanup

###
# Install apps
###
brew install caskroom/cask/brew-cask

apps=(
  google-chrome
  firefox
  vagrant
  iterm2
  sublime-text3
  virtualbox
  skype
  pgadmin3
  p4merge
  spectacle
)

echo "Tapping beta versions..."
brew tap caskroom/versions

echo "Installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

###
# Set up oh-my-zsh
###
curl -L http://install.ohmyz.sh | sh

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

