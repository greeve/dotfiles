" Greg's .vimrc
set nocompatible

filetype off
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Custom plugins
Plugin 'davidhalter/jedi-vim'
Plugin 'klen/python-mode'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" Mappings
au! BufNewFile,BufRead *.text  set filetype=markdown
au! BufNewFile,BufRead *.md  set filetype=markdown

noremap <Up> ""
noremap! <Up> <Esc>
noremap <Down> ""
noremap! <Down> <Esc>
noremap <Left> ""
noremap! <Left> <Esc>
noremap <Right> ""
noremap! <Right> <Esc>

nmap <leader>l :set list!<CR>

" Set :W to :w
cabbrev W w

" Tabs 
set encoding=utf-8
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set number
set cursorline
set hlsearch
set incsearch
set title
set laststatus=2
set noerrorbells
set ruler
set linebreak
set display=lastline
set backspace=indent,eol,start
set hidden
set confirm
set showcmd
set scrolloff=6
set wildmode=longest,list
set wildmenu
set pastetoggle=<F2>
set noshowmode 
" set background=dark

syntax on

" Silver Searcher config
if executable('ag')
    " Note we extract the column as well as the file and line number
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m
endif

" Color schemes

" argonaut
" https://github.com/effkay/argonaut.vim
" :colorscheme argonaut

" blackboard
" https://github.com/ratazzi/blackboard.vim
" :colorscheme blackboard

" C64
" https://github.com/vim-scripts/C64.vim
" :colorscheme C64

" colorsbox
" https://github.com/mkarmona/colorsbox
" :colorscheme colorsbox-faff
" :colorscheme colorsbox-greenish
" :colorscheme colorsbox-material
" :colorscheme colorsbox-stblue
" :colorscheme colorsbox-stbright
" :colorscheme colorsbox-steighties
" :colorscheme colorsbox-stnight

" github
" https://github.com/acarapetis/vim-colors-github
" :colorscheme github

" IR_Black
" https://github.com/twerth/ir_black
" :colorscheme ir_black
" :colorscheme ir_blue
" :colorscheme ir_dark

" simple_dark
" https://github.com/acoustichero/simple_dark
" :colorscheme simple_dark

" vim-hybrid
" https://github.com/w0ng/vim-hybrid
" :colorscheme hybrid

" woju
" https://github.com/woju/vim-colors-woju
" :colorscheme woju

" wwdc16
" https://github.com/lifepillar/vim-wwdc16-theme
:colorscheme wwdc16
let g:wwdc16_term_italics = 1
let g:wwdc16_term_trans_bg = 1

" Plugin configurations

" python-mode
let g:pymode_rope = 0
let g:pymode_doc_bind = 'K'
let g:pymode_lint_checkers = ['pyflakes', 'pep8']
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_folding = 0
let g:pymode_lint_on_fly = 0
let g:pymode_run_bind = '<leader>p'

" jedi-vim
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#completions_command = ",,"

" vim-airline
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
" let g:airline_left_sep=''
" let g:airline_right_sep=''
let g:airline_detect_spell=1

" ctrlp.vim
let g:ctrlp_by_filename = 0
let g:ctrlp_working_path_mode = 0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 
let g:ctrlp_custom_ignore = '\vnode_modules'
" map <c-b> :CtrlPBuffer<cr>

" ~/.vimrc ends here
