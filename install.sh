#!/usr/bin/env bash
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# Update dotfiles itself first

[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# run the install scripts

. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/brew-cask.sh"
. "$DOTFILES_DIR/install/rvm.sh"
. "$DOTFILES_DIR/install/npm.sh"
. "$DOTFILES_DIR/install/vscode.sh"

# get the vim stuff via submodule
git submodule init
git submodule update --depth=1

# symlink them there rc files
ln -svf $DOTFILES_DIR/runcom/.zshrc ~/.zshrc
ln -svf $DOTFILES_DIR/runcom/.vimrc ~/.vimrc

# go on ahead and symlink them there vscode settings too
ln -s $DOTFILES_DIR/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s $DOTFILES_DIR/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -s $DOTFILES_DIR/vscode/snippets/ ~/Library/Application\ Support/Code/User/snippets