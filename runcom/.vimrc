let $CURRENT_USER_HOME=expand('<sfile>:p:h')
set runtimepath+=$CURRENT_USER_HOME/dotfiles/vim_runtime

source $CURRENT_USER_HOME/dotfiles/vim_runtime/vimrcs/basic.vim
source $CURRENT_USER_HOME/dotfiles/vim_runtime/vimrcs/filetypes.vim
source $CURRENT_USER_HOME/dotfiles/vim_runtime/vimrcs/plugins_config.vim
source $CURRENT_USER_HOME/dotfiles/vim_runtime/vimrcs/extended.vim

source $CURRENT_USER_HOME/dotfiles/vim_runtime/overrides.vim
