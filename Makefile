DOTFILES=\
	 .vimrc \
	 .zsh-comp \
	 .zshrc \
	 .profile.d \

CONFIGS=\
	sublime-text-3 \

install:
	for i in ${DOTFILES}; do \
		cp -r $$i ~/; \
		chmod u+rwX,go-rwx ~/$$i; \
	done
	mkdir -p ~/.config
	for i in ${CONFIGS}; do \
		cp -r config/$$i ~/.config/; \
		chmod u+rwX,go-rwx ~/.config/$$i; \
	done


