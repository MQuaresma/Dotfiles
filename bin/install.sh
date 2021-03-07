#!/bin/bash
# Install xcode command line tools
xcode-select --install

# Setup git
read -p "Please enter your git email:" EMAIL
read -p "Please enter your git username:" UNAME
git config --global user.email "$EMAIL"
git config --global user.name "$UNAME"

# Install Homebrew & utilities/tools
if test ! $(which brew); then
    echo "Installing brew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "[Homebrew] updating..."
brew update

echo "[Homebrew] installing applications..."
#brew_utils="python go nmap gpg grep node pandoc binwalk gdb openssl"
#cask_utils="emacs-mac firefox google-chrome keybase knockknock lulu macpass mendeley-reference-manager oversight rectangle signal skype slack tunnelblick visual-studio-code zoom zulip"
#for i in $brew_utils; do
#    echo "[Homebrew] installing ${i}"
#    brew install $i 
#done
#for i in $cask_utils; do
#    echo "[Homebrew] installing ${i}"
#    brew install --cask $i                      
#done

echo "[Homebrew] finishing up..."
brew update && brew upgrade && brew cleanup
echo "[Homebrew] all setup!"
