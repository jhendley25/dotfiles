# Install Caskroom

brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages

apps=(
  alfred
  android-sdk
  android-ndk
  docker
  firefox
  google-chrome
  iterm2
  screenflow
  slack
  spotify
  virtualbox
  visual-studio-code
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
