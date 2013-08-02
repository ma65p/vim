## Installation:

1. To install this vim on a new computer, do:

	```
	cd ~
	git clone git@github.com:ma65p/vim.git ~/.vim
	ln -s ~/.vim/.vimrc ~/.vimrc
	```

2. Then install Vundle the old school way
	```
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
	```

3. Then open vim or mvim to install the bundles. Hopefully the warning disappear after bundles are installed
	```
    vim
    :BundleInstall
	```

Once all bundles are installed, restart vim or mvim to see the magic. Notes are left in the .vimrc for guidance on what's happending

## General Notes

1. If plugins are not managed by bundles should be installed as submodule if is manged by git
	```
	git submodule add [git path] [local path]
	```

2. Colorscheme "Solarized" is managed by Vundle and the file "solarized" is actually a symbolic link to the file in the Vundle bundle directory `~/.vim/bundle/vim-colors-solarized/colors/solarized`
	```
    ln -s ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/solarized.vim 
	```

3. Snippets are done by combination of omnicomplcache + Omnisnippets 

4. Credit for this should be from this [awesome blog post using pathogen]( http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)

