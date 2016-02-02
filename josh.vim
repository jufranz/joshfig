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

" Comma as mapleader
let mapleader = ","

" Misc "

syntax on
set number
set cursorline
set pastetoggle=<leader>.
set showcmd
set wildmenu
set wildmode=list:longest
set title
set scrolloff=10
set nu
set mouse=a

" Indentation
filetype indent off
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab
set autoindent
filetype plugin indent on

" Search highlighting
set hlsearch
set ignorecase
nnoremap ./ :nohlsearch<CR>

" Colors
colorscheme torte

" Move to word
nmap s <Plug>(easymotion-bd-w)