brew install nvm

nvm install 0.10
nvm install 4
nvm install 6
nvm alias default 4
nvm use default

# Globally install with npm

packages=(
  diff-so-fancy
  grunt
  gulp
  http-server
  nodemon
  release-it
  spot
  svgo
  tldr
  underscore-cli
  vtop
)

npm install -g "${packages[@]}"
