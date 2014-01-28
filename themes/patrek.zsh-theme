# My Own Theme

local host_color="green"
local my_host="%m"
if [ -n "$SSH_CONNECTION" ]; then
  local host_color="red"
  local my_host="%M"
fi

local user_color="blue"; [ $UID -eq 0 ] && user_color="red"

#PROMPT='$user_color ${user_color} %n@%m %{$fg_bold[${user_color}]%}%{$reset_color%}%(!.#.>) '
PROMPT='%{$fg_bold[$user_color]%}%n%{$reset_color%}@%{$fg_bold[green]%}${my_host}%{$reset_color%}:%{$fg_bold[yellow]%}${PWD/#$HOME/~}%{$reset_color%} $(git_prompt_info)$(git_prompt_short_sha)$(git_prompt_status)$(git_remote_status)
$ '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'

local return_status="%{$fg_bold[red]%}%(?..%?)%{$reset_color%}"
#RPROMPT='${return_status}$(git_prompt_info)$(git_prompt_status)%{$reset_color%}'

RPROMPT='${return_status} %{$fg[cyan]%}(%D{%Y-%m-%d %H:%M:%S})%{$reset_color%} !$[HISTCMD-1]'


if [ "$(whoami)" = "root" ]; then
    PROMPTCOLOR="%{$R%}" PREFIX="-!-";
else
    PROMPTCOLOR="" PREFIX="---";
fi

local return_code="%(?..%{$R%}%? ↵%{$RESET%})"
    ###
    # Modify Git prompt

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}(git:%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[white]%}) %{$fg[yellow]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[white]%})"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" [sha:%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$fg_bold[magenta]%}↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$fg_bold[magenta]%}↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="%{$fg_bold[magenta]%}↕%{$reset_color%}"


