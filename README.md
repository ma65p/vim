This is my VIM setup
Note:

1. Sync cross computer using git per instruction from:
http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
2. Using Vundle instead of Pathogen. Note that Vundle is installed as a submodule so it can be updated with git. 

	git submodule add https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

3. To Sync to new computer uses these sequence:

	cd ~
	git clone git@github.com:ma65p/vim.git ~/.vim
	ln -s ~/.vimrc/vimrc ~/.vimrc
	cd ~/.vim
	git submodule init
	git submodule update

4. If plugins are not managed by bundles should be installed as submodule if is manged by git

	git submodule add [git path] [local path]

5. Colorscheme "Solarized" is managed by Vundle and the file "solarized" is actually a symbolic link to the file in the Vundle bundle directory ~/.vim/bundle/vim-colors-solarized/colors/solarized

    ln -s ~/.vim/bundle/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/solarized.vim 

6. Snippets are done by combination of omnicomplcache + Omnisnippets + Ultisnippets. The snippets folder ~/.vim/snippets is symlink to ~/.vim/bundle/vim-snippets/snippets so you can view what the snippets are. Vundle is managing this. Omnisnippets is already pointed to this same folder. 
