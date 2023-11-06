.PHONY: crete-xdg-config-dir tmux

all: tmux

create-xdg-config-dir:
	[ -d "$(XDG_CONFIG_HOME)" ] || mkdir "$(XDG_CONFIG_HOME)"

tmux: create-xdg-config-dir
	cp -r ./tmux "$(XDG_CONFIG_HOME)"/
