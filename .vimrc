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
    "http://stackoverflow.com/questions/8413781/automatically-set-multiple-file-types-in-filetype-if-a-file-has-multiple-exten
    autocmd BufRead,BufNewFile *.html.erb setlocal filetype=html.eruby
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
	"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
	"function! s:my_cr_function()
	  "" Insert first candidates with CR
	  "return pumvisible() ? neocomplcache#smart_close_popup() : "\<CR>"
	"endfunction
" NeoSnippets
    " Enable snipMate compatibility feature.
    let g:neosnippet#enable_snipmate_compatibility = 0
	" " Tell Neosnippet about the other snippets
	let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
    " disable built-in snippets
    let g:neosnippet#disable_runtime_snippets = {'_' : 1}
	" Plugin key-mappings.
	imap <C-k>     <Plug>(neosnippet_expand_or_jump)
	smap <C-k>     <Plug>(neosnippet_expand_or_jump)
	xmap <C-k>     <Plug>(neosnippet_expand_target)
	" Selecting options still use <C-n> and <C-p>
    " Shift Tab will tranverse your popup list.
    inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
    " Tab do two things:
    " if cusor is at a jumpable snippets then just jump. 
    " otherwise, if is part of a popup then move to next item
    " otherwise, simply tab
    imap <expr> <TAB> pumvisible() ? "\<C-n>" : neosnippet#jumpable() ? "\<Plug>(neosnippet_jump)" : "\<TAB>"
    " if cusor is at an expandable snippet, then expand,
    " otherwise, just act as regular enter
    imap <expr><CR> neosnippet#expandable() ? "\<Plug>(neosnippet_expand)" :  pumvisible() ? neocomplcache#smart_close_popup() : "\<CR>"
    "inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
	"function! s:my_cr_function()
	  "" Insert first candidates with CR
	  "return pumvisible() ? neocomplcache#smart_close_popup() : "\<CR>"
	"endfunction

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
Bundle 'scrooloose/nerdcommenter'
Bundle 'honza/vim-snippets'
Bundle 'Lokaltog/vim-easymotion'


