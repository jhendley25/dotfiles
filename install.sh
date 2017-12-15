#!/usr/bin/env bash
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# Update dotfiles itself first

[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# run the install scripts

. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/brew-cask.sh"
. "$DOTFILES_DIR/install/rvm.sh"
. "$DOTFILES_DIR/install/npm.sh"

# get the vim stuff via submodule

git submodule init
git submodule update --depth=1

#NOTE need to add some type for plugin registration for vim for new stuff I install..


ln -svf ~/dotfiles/runcom/.zshrc ~/.zshrc
ln -svf ~/dotfiles/runcom/.vimrc ~/.vimrc
