" Basics
set nocompatible		" be iMproved
filetype off			" required!
filetype plugin indent on	" required!
let mapleader = ","		" Change map leader
set number			" Show Number
syntax on			" Turn on Syntax
set laststatus=2   		" Always show the statusline
set encoding=utf-8 		" Necessary to show Unicode glyphs
set smartindent			" Do smart indent
set tabstop=4			" Tab is 4 spaces
set shiftwidth=4		" Indentation is 4 spaces
set expandtab			" Tab characters are converted to spaces
colorscheme solarized		" Use Solarized
set background=dark     	" Use dark bg for Solarized
set foldlevel=4 		" High fold level so zc will close lower lvl 1st
set number			" Print the number of each line
set guifont=Monaco:h12  	" Use Monaco 12
" Miscs
	"Saving Fold Automatically
	"http://stackoverflow.com/questions/2142402/code-folding-is-not-saved-in-my-vimrc
	"Note that folder ~/.vim/view is created to manage saved folds
	au BufWinLeave ?* mkview
	au BufWinEnter ?* silent loadview
	" Arrow Keys do nothing
	nnoremap <up> <nop>
	nnoremap <down> <nop>
	nnoremap <left> <nop>
	nnoremap <right> <nop>
	inoremap <up> <nop>
	inoremap <down> <nop>
	inoremap <left> <nop>
	inoremap <right> <nop>
" Neocomplcache
	" Disable AutoComplPop.
	let g:acp_enableAtStartup = 0
	" Use neocomplcache.
	let g:neocomplcache_enable_at_startup = 1
	" Use smartcase.
	let g:neocomplcache_enable_smart_case = 1
    " Highlighting first candidates
    let g:neocomplcache_enable_auto_select = 1
	" Recommended key-mappings.
	" <CR>: close popup and save indent.
	inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
	function! s:my_cr_function()
	  " For no inserting <CR> key.
	  return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
	endfunction
" NeoSnippets
	" " Tell Neosnippet about the other snippets
	let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippet'
	" Plugin key-mappings.
	imap <C-k>     <Plug>(neosnippet_expand_or_jump)
	smap <C-k>     <Plug>(neosnippet_expand_or_jump)
	xmap <C-k>     <Plug>(neosnippet_expand_target)
	" Selecting options still use <C-n> and <C-p>
	" Tab will expand the selected option. Better to just type out the
	" snippets.
	" SuperTab like snippets behavior.
	imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
	\ "\<Plug>(neosnippet_expand_or_jump)"
	\: pumvisible() ? "\<C-n>" : "\<TAB>"
	smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
	\ "\<Plug>(neosnippet_expand_or_jump)"
	\: "\<TAB>"

" CtrlP
	"Remap CtrlP plugin
	let g:ctrlp_map = '<leader>t'
	let g:ctrlp_cmd = 'CtrlP'

	"ignore certain directories
	set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
	set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
	let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Vundle
	"Defaults setup
	set rtp+=~/.vim/bundle/vundle/
	call vundle#rc()

	" let Vundle manage Vundle
	" required! 
	Bundle 'gmarik/vundle'
" My Bundles
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'honza/vim-snippets'
Bundle 'Lokaltog/vim-easymotion'


