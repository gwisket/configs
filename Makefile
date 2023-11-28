.PHONY: crete-xdg-config-dir tmux keyd emacs

all: tmux keyd emacs

create-xdg-config-dir:
	[ -d "$(XDG_CONFIG_HOME)" ] || mkdir "$(XDG_CONFIG_HOME)"

tmux: create-xdg-config-dir
	cp -r ./tmux "$(XDG_CONFIG_HOME)"/

keyd:
	sudo cp -r ./keyd /etc/

emacs: create-xdg-config-dir
	cp -r ./emacs "$(XDG_CONFIG_HOME)"/
