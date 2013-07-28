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
