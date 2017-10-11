source ~/.zplug/init.zsh

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/battery", from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh
zplug "plugins/nyan", from:oh-my-zsh
zplug "djui/alias-tips"
zplug "denysdovhan/spaceship-zsh-theme", as:theme
zplug "raylee/tldr"
zplug "KeitaNakamura/tmux-utils", \
  as:command, \
  use:"bin/*"
zplug "mafredri/zsh-async"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load

# system custom
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# behaviour
export COMPLETION_WAITING_DOTS="true"
setopt auto_menu
setopt complete_in_word
setopt always_to_end
unsetopt menu_complete
zstyle ':completion:*' matcher-list 'r:|=*' 'l:|=* r:|=*'
unsetopt flowcontrol
setopt auto_cd
setopt complete_aliases
setopt extended_glob
unsetopt case_glob
setopt correct
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_verify
setopt share_history
setopt pushd_ignore_dups
setopt interactivecomments
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"
REPORTTIME=30
TIMEFMT="%U user %S system %P cpu %*Es total"
unsetopt correctall
autoload -U colors && colors
export CLICOLOR=true
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

export EDITOR=nvim
#DEFAULT_USER=chip
# define DEFAULT_USER in ~/.zshrc.local!!!

# plugin behaviour
SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_PROMPT_SYMBOL=">"
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# my aliases
alias l="ls -aFG"
alias ll="ls -ahlFG"
alias lll="ls -ahlFG | less"
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias ssh="ssh -A"
alias tmux="tmux -2"
alias ni="nvim"
alias please="sudo"
alias wget="wget -c"
alias external_ip="curl -s icanhazip.com"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias attach="tmux attach || tmux new"
alias matrix="cmatrix -ab"
alias pipe="pipes.sh -r 0"
alias weather="curl -s wttr.in | head -7"
alias yt="youtube-dl"
alias ..="cd .."
alias ...="cd ../.."

# startup cmds
weather

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
