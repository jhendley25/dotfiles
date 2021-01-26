brew install nvm

nvm install lts/fermium
nvm alias default lts/fermium
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
