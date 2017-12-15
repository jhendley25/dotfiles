let $CURRENT_USER_HOME=expand('<sfile>:p:h')
set runtimepath+=$CURRENT_USER_HOME/dotfiles/vim

source $CURRENT_USER_HOME/dotfiles/vim/vimrcs/basic.vim
source $CURRENT_USER_HOME/dotfiles/vim/vimrcs/filetypes.vim
source $CURRENT_USER_HOME/dotfiles/vim/vimrcs/plugins_config.vim
source $CURRENT_USER_HOME/dotfiles/vim/vimrcs/extended.vim

source $CURRENT_USER_HOME/dotfiles/system/.overrides.vim
