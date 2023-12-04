export XDG_CONFIG_HOME="$HOME/.config"

if [[ ! -v TMUX ]]; then
    tmux && exit
fi
