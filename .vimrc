set shell=bash
set rtp+=~/.vim/bundle/Vundle.vim

"enable mouse support
set mouse=a

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'facebook/vim-flow'
Plugin 'yosiat/oceanic-next-vim'
Plugin 'chriskempson/base16-vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/syntastic'
Plugin 'fatih/vim-go'
Plugin 'rust-lang/rust.vim'
Plugin 'cespare/vim-toml'
Plugin 'tikhomirov/vim-glsl'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'

call vundle#end()

set t_Co=256
set background=dark

let g:gruvbox_italic=0
let g:gruvbox_contrast_dark='hard'

if has('gui_running')
  colorscheme OceanicNext
else
  colorscheme gruvbox
endif

let g:paredit_electric_return = 0

set shiftwidth=2
set softtabstop=2
set expandtab
set nowrap

set number

if has('autocmd')
  filetype plugin indent on
endif

let g:ycm_filetype_blacklist = {'js': 1}

" Java
let g:EclimCompletionMethod = 'omnifunc'
" end Java

" Golang
autocmd FileType go compiler golang
let g:go_fmt_command = 'goimports'
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

au Filetype go nnoremap <leader>v :vsp <CR>:exe "GoDef" <CR>
au Filetype go nnoremap <leader>s :sp <CR>:exe "GoDef"<CR>
au Filetype go nnoremap <leader>t :tab split <CR>:exe "GoDef"<CR>
" end Golang

" Rust
let g:ycm_rust_src_path = '/Users/iandilling/Developer/rust-master/src'
" end Rust

" syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = []
" end syntastic

" Javascript
let g:EclimJavascriptValidate = 0
let g:flow#autoclose = 1
let g:jsx_ext_required = 0
" end Javascript

autocmd BufWritePre * :%s/\s\+$//e
set viminfo='100,\"2500,:200,%,n~/.viminfo'

" Key Bindings

if has('gui_macvim')
  imap ˙ <Esc><Left>
  imap ∆ <Esc><Down>
  imap ˚ <Esc><Up>
  imap ¬ <Esc><Right>
  imap ø <Esc>o
  imap Ø <Esc>O
endif

imap <C-c> <CR><Esc>O
map <silent> <C-i> :NERDTreeToggle<CR>

