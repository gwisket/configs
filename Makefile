.PHONY: crete-xdg-config-dir tmux keyd

all: tmux

create-xdg-config-dir:
	[ -d "$(XDG_CONFIG_HOME)" ] || mkdir "$(XDG_CONFIG_HOME)"

tmux: create-xdg-config-dir
	cp -r ./tmux "$(XDG_CONFIG_HOME)"/

keyd: create-xdg-config-dir
	sudo cp -r ./keyd /etc/
