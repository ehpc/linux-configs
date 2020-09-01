
call plug#begin(stdpath('data') . '/plugged')
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
"  Plug 'itchyny/lightline.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'mhinz/vim-startify'
  Plug 'francoiscabrol/ranger.vim'
  Plug 'rbgrouleff/bclose.vim'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'honza/vim-snippets'
  Plug 'liuchengxu/vim-which-key'
call plug#end()

let $CFG = stdpath('config')

source $CFG/general.vim
source $CFG/theme.vim
source $CFG/coc.vim
source $CFG/fzf.vim
" source $CFG/lightline.vim
source $CFG/airline.vim
source $CFG/startify.vim
source $CFG/colorizer.vim
source $CFG/ranger.vim
source $CFG/which.vim

