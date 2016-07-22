local pwd='%{$fg_bold[yellow]%}%~%{$reset_color%}'



RVM_COLOR="%{$fg[red]%}"
NVM_COLOR="%{$fg[green]%}"
GIT_BRANCH_COLOR="%{$fg[cyan]%}"
LAMBDA_COLOR="%{$fg_bold[red]%}"


ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}on $BRACKET_COLOR$GIT_BRANCH_COLOR"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}o"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}x"

if [ -e ~/.rvm/bin/rvm-prompt ]; then
  RVM_="$RVM_COLOR\${\$(~/.rvm/bin/rvm-prompt i v g)#ruby-}%{$reset_color%}"
fi

local git_branch='$(git_prompt_info)%{$reset_color%}'
# nvm node version
if [ -e ~/.nvm/nvm.sh ]; then
  NVM_="$NVM_COLOR\${\$(nvm current)#v}%{$reset_color%}"
fi

PROMPT="${pwd} ${RVM_} ${NVM_} ${git_branch}
%{$fg_bold[red]%}λ %{$reset_color%}"
