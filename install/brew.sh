# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/versions
brew tap homebrew/dupes
brew tap jesseduffield/lazydocker
brew tap Goles/battery
brew update
brew upgrade

# Install packages

apps=(
  ant
  bash-completion2
  bats
  battery
  coreutils
  cmake
  dockutil
  ffmpeg
  fasd
  gifsicle
  git
  git-delta
  gnu-sed --with-default-names
  golang
  gradle
  grep --with-default-names
  hub
  httpie
  imagemagick
  jq
  lazydocker
  mackup
  maven
  peco
  psgrep
  postgresql
  python
  shellcheck
  ssh-copy-id
  svn
  tree
  vim
  wget
  wifi-password
)

brew install "${apps[@]}"
