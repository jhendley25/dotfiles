# Install Caskroom

brew tap homebrew/cask
brew tap homebrew/cask-versions

# Install packages

apps=(
  rectangle
  slack
  spotify
  visual-studio-code
)

brew  install --cask "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew install --cask qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
