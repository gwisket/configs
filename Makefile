.PHONY: crete-xdg-config-dir tmux keyd emacs bash nvim

all: tmux keyd emacs bash

create-xdg-config-dir:
	[ -d "$(XDG_CONFIG_HOME)" ] || mkdir "$(XDG_CONFIG_HOME)"

tmux: create-xdg-config-dir
	cp -r ./tmux "$(XDG_CONFIG_HOME)"/

keyd:
	sudo cp -r ./keyd /etc/

emacs: create-xdg-config-dir
	cp -r ./emacs "$(XDG_CONFIG_HOME)"/

bash:
	cp -r ./bash/.* "$(HOME)"

nvim:
	cp -r ./nvim/ $(XDG_CONFIG_HOME)/
