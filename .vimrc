" Vundle configuration
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-vinegar'
Plugin 'bling/vim-airline'
Plugin 'rking/ag.vim'
Plugin 'mbbill/undotree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
"Plugin 'wikitopian/hardmode'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'tpope/vim-repeat'
Plugin 'dahu/vim-fanfingtastic'
call vundle#end()
filetype plugin indent on
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ



" Custom configuration
set encoding=utf-8
set ruler laststatus=2 number title hlsearch cc=81
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4 incsearch
set background=dark
colorscheme molokai
set list
set listchars=tab:▸\ ,eol:¬
nnoremap <silent> <CR> :nohlsearch<CR><CR>
set mouse=a
set ignorecase
set smartcase
set keymap=russian-jcukenwin
highlight lCursor guifg=NONE guibg=Cyan
set iminsert=0
set imsearch=0

" Bookmarking
let g:bookmark_manage_per_buffer = 1

" Spelling
nmap <silent> <leader>s :set spell!<CR>
"set spell
set spelllang=ru,en

" Plugins
syntax on
nnoremap <F5> :NERDTreeToggle<CR>
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:ctrlp_working_path_mode = 'r'
nnoremap <F1> :CtrlPBuffer<CR>
nnoremap <F2> :CtrlPMixed<CR>

" The Silver Searcher
if executable('ag')
	set grepprg=ag\ --nogroup\ --nocolor
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
	let g:ctrlp_use_caching = 0
endif

" Let's save undo info!
if !isdirectory($HOME."/.vim")
	call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo")
	call mkdir($HOME."/.vim/undo", "", 0700)
endif
set undodir=~/.vim/undo
set undofile
nnoremap <F6> :UndotreeToggle<cr>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" Sessions
let g:session_autoload = "no"
let g:session_autosave = "yes"
let g:session_autosave_to = "default"

" Hardmode
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

