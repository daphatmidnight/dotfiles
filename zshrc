# system custom
[[ $TERM == *"rxvt"* ]] && wmctrl -r :ACTIVE: -b add,fullscreen

# load plugin manager
source ~/.zplug/init.zsh

zplug "lukechilds/zsh-nvm"
zplug "agnoster/agnoster-zsh-theme"
zplug "lib/directories", \
  from:oh-my-zsh
zplug "lib/completion", \
  from:oh-my-zsh
zplug "k4rthik/git-cal", \
  as:command
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", \
  nice:10

# installation check
if ! zplug check --verbose; then
  printf "Install? [y/n]: "
  if read -q; then
    echo; zplug install
  else
    echo
  fi
fi

zplug load --verbose

# behaviour
umask 022
export EDITOR=vim
export LANG=en_GB.UTF-8
#DEFAULT_USER=chip
# define DEFAULT_USER in ~/.zshrc.local!!!

# looks
autoload -U colors && colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"
ls --color -d . &>/dev/null 2>&1 && alias ls='ls --color=tty' || alias ls='ls -G'
# does not work on NetBSD or OpenBSD

# history 101
HISTFILE=$HOME/.zsh-history
HISTSIZE=10000
SAVEHIST=10000
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history

# straight outta completion
setopt auto_list
setopt auto_param_slash
setopt auto_param_keys
setopt list_types
setopt list_packed
setopt auto_cd
setopt auto_pushd
setopt pushd_minus
setopt pushd_ignore_dups
setopt complete_aliases

[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

