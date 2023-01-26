call plug#begin('/home/kaizuser/.config/nvim/autoload/plugged')

" PLUGINS -----------------------------------------------------------------
" Themes
Plug 'Mofiqul/dracula.nvim'
Plug 'morhetz/gruvbox'
Plug 'powerline/powerline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }   
Plug 'kyazdani42/nvim-web-devicons'

" Syntax
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vim-syntastic/syntastic'
Plug 'alvan/vim-closetag'
Plug 'yuezk/vim-js'

" Icons
Plug 'ryanoasis/vim-devicons'

" Shortcuts
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jeetsukumaran/vim-buffergator'

" Buffers
Plug 'romgrk/barbar.nvim'

call plug#end()

" BASIC DETAILS -----------------------------------------------------------
set number 

" SHORCUTS ----------------------------------------------------------------
" Easymotion-nerdtree
let mapleader=' '
let NERDTreeQuitOnOpen=1

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

" Buffers
set termguicolors
let bufferline = get(g:, 'bufferline', {})

let bufferline.animation = v:true
let bufferline.closable = v:false
let bufferline.both = v:true

let bufferline.icon_separator_active = ''
let bufferline.icon_separator_inactive = ''

nnoremap <Leader>j :BufferPrevious<CR>
nnoremap <Leader>k :BufferNext<CR>
nnoremap <Leader>h :BufferMovePrevious<CR>
nnoremap <Leader>l :BufferMoveNext<CR>
nnoremap <Leader>d :BufferClose<CR>

" AESTHETIC THEMES --------------------------------------------------------
syntax enable
colorscheme dracula

" Airline
set t_Co=256

" NerdTree
set guifont=UbuntuMonoNerdFont
let g:airline_powerline_fonts = 1
let g:NERDTreeExtensionHighlightColor = {}

" INTERFACE PLUGINS -------------------------------------------------------
" Syntastic
set signcolumn=no

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors=1

let g:syntastic_quiet_messages={'type':'style'}
let g:syntastic_quiet_messages={'type':'warning'}
let g:syntastic_quiet_messages={'!level':'errors'}

" SYNTAX ------------------------------------------------------------------
" Vim-closetag

let g:closetag_filenames = '*.html, *.xhtml, *.phtml, *.jsx, *.tsx, *.js, *.ts'
let g:closetag_xhtml_filenames = '*.xhtml, *.jsx, *.tsx, *.js, *.ts'
let g:closetag_filetypes = 'html, xhtml ,phtml, jsx, tsx, js, ts, typescriptreact, javascriptreact'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,tsx,js,ts'
let g:closetag_emptyTags_caseSensitive = 1

" coc
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction








