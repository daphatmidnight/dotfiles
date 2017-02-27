# This tmux statusbar config was created by tmuxline.vim
# on Thu, 22 Sep 2016

set -g status-bg ""
set -g message-command-fg ""
set -g status-justify "left"
set -g status-left-length "100"
set -g status "on"
set -g pane-active-border-fg ""
set -g message-bg ""
set -g status-right-length "100"
set -g status-right-attr "none"
set -g message-fg ""
set -g message-command-bg ""
set -g status-attr "none"
set -g pane-border-fg ""
set -g status-left-attr "none"
setw -g window-status-fg ""
setw -g window-status-attr "none"
setw -g window-status-activity-bg ""
setw -g window-status-activity-attr "none"
setw -g window-status-activity-fg ""
setw -g window-status-separator ""
setw -g window-status-bg ""
set -g status-left "#[fg=,bg=] #S #[fg=,bg=,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=,bg=,nobold,nounderscore,noitalics]#[fg=,bg=] %Y-%m-%d  %H:%M #[fg=,bg=,nobold,nounderscore,noitalics]#[fg=,bg=] #h "
setw -g window-status-format "#[fg=,bg=] #I #[fg=,bg=] #W "
setw -g window-status-current-format "#[fg=,bg=,nobold,nounderscore,noitalics]#[fg=,bg=] #I #[fg=,bg=] #W #[fg=,bg=,nobold,nounderscore,noitalics]"