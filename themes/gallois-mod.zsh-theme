ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg_bold[yellow]%}[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[yellow]%}]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}"

#Customized git status, oh-my-zsh currently does not allow render dirty status before branch
git_custom_status() {
  local cb=$(current_branch)
  if [ -n "$cb" ]; then
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(parse_git_dirty)$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

RPS1='$(git_custom_status)%{$fg[red]%}%{$reset_color%} $EPS1'

PROMPT='%{$fg_bold[blue]%}[%~% ]%(?.%{$fg[green]%}.%{$fg[red]%})%B$%b '
