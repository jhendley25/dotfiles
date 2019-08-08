#NOTE: this just loads stuff from the dotfiles dir
# OS

if [ "$(uname -s)" = "Darwin" ]; then
  OS="OSX"
else
  OS=$(uname -s)
fi

# Resolve DOTFILES_DIR (assuming ~/.dotfiles on distros without readlink and/or $BASH_SOURCE/$0)

READLINK=$(which greadlink || which readlink)
CURRENT_SCRIPT=$BASH_SOURCE

export NVM_DIR="$HOME/.nvm"

if [[ -n $CURRENT_SCRIPT && -x "$READLINK" ]]; then
  SCRIPT_PATH=$($READLINK -f "$CURRENT_SCRIPT")
  DOTFILES_DIR=$(dirname "$(dirname "$SCRIPT_PATH")")
elif [ -d "$HOME/dotfiles" ]; then
  DOTFILES_DIR="$HOME/dotfiles"
else
  echo "Unable to find dotfiles, exiting."
  return # `exit 1` would quit the shell itself
fi

# Finally we can source the dotfiles (order matters)

for DOTFILE in "$DOTFILES_DIR"/system/.{function,path,env,alias,nvm,antigen,work}; do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done

if [ "$OS" = "OSX" ]; then
  for DOTFILE in "$DOTFILES_DIR"/system/.{env,alias,function}.osx; do
    [ -f "$DOTFILE" ] && . "$DOTFILE"
  done
fi

# Clean up

unset READLINK CURRENT_SCRIPT SCRIPT_PATH DOTFILE

# Export

export OS DOTFILES_DIR EXTRA_DIR

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="/usr/local/opt/elasticsearch@2.4/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# override Ctrl-s for vim reasons
stty -ixon

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/jhendley/.nvm/versions/node/v8.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/jhendley/.nvm/versions/node/v8.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/jhendley/.nvm/versions/node/v8.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/jhendley/.nvm/versions/node/v8.12.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/jhendley/.nvm/versions/node/v8.10.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/jhendley/.nvm/versions/node/v8.10.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh