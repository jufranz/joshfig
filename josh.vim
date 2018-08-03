"
" Source this file in your ~/.vimrc
"

set nocompatible | filetype indent plugin on | syn on

fun! SetupVAM()
  let c = get(g:, 'vim_addon_manager', {})
  let g:vim_addon_manager = c
  let c.plugin_root_dir = expand('$HOME', 1) . '/.vim/vim-addons'

  " Force your ~/.vim/after directory to be last in &rtp always:
  " let g:vim_addon_manager.rtp_list_hook = 'vam#ForceUsersAfterDirectoriesToBeLast'

  " most used options you may want to use:
  " let c.log_to_buf = 1
  " let c.auto_install = 0
  let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
  if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
  execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '
  \       shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
  endif

  " This provides the VAMActivate command, you could be passing plugin names, too
  call vam#ActivateAddons([], {})
endfun
call SetupVAM() 

VAMActivate The_NERD_Commenter
VAMActivate EasyMotion
VAMActivate github:christoomey/vim-tmux-navigator
VAMActivate github:nachumk/systemverilog.vim
VAMActivate github:tpope/vim-abolish
VAMActivate indentLine

" Comma as mapleader
let mapleader = ","

" Misc "

syntax on
set number
" https://github.com/vim/vim/issues/2584
"set cursorline
"set pastetoggle=<leader>.
set showcmd
set wildmenu
set wildmode=list:longest
"set title
set scrolloff=10
set nu
set mouse=a
set wrap!

" Indentation
filetype indent off
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set autoindent
filetype plugin indent on

" Search highlighting
set hlsearch
set ignorecase
nnoremap zz :nohlsearch<CR>

" remap zx to escape
inoremap zx <Esc>
vnoremap zx <Esc>

" remap <leader> p to paste without moving cursor
nnoremap <leader>p P`[

" Muck Fake
autocmd FileType make setlocal noexpandtab

" Colors
colorscheme torte

" Move to word
nmap s <Plug>(easymotion-bd-w)

" verilog header highlighting
autocmd BufNewFile,BufRead *.vh   set syntax=verilog

" Set up backspace, just in case it wasn't set up by the system
set backspace=indent,eol,start
