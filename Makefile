DOTFILES=\
	 .vimrc \
	 .zsh-comp \
	 .zshrc \
	 .profile.d \

install:
	for i in ${DOTFILES}; do \
		cp -r $$i ~/; \
		chmod u+rwX,go-rwx ~/$$i; \
	done


