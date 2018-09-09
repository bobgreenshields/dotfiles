"necessary on some Linux distros for pathogen to properly load bundles
filetype on
filetype off

"load pathogen managed plugins
"call pathogen#infect()

"call plug#begin('~/.vim/plugged')
call plug#begin('../plugged')

Plug 'scrooloose/nerdtree'


call plug#end

"Use Vim settings, rather then Vi settings (much better!).
"this must be first, because it changes other options as side effect
set nocompatible

au BufRead,BufNewFile *.md set filetype=markdown

"let g:Powerline_symbols = "fancy"
let g:airline_powerline_fonts = 1
set laststatus=2
set t_Co=256
set encoding=utf-8
set nowrap        " don't wrap lines
set tabstop=2     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

""statusline setup
"set statusline=%f       "tail of the filename

"Git
"set statusline+=%{fugitive#statusline()}

"Command-T configuration
"let g:CommandTMaxHeight=10
"let g:CommandTMatchWindowAtTop=1

"write to a file that needs sudo permissions when it has
"been opened without them
cmap w!! w !sudo tee % > /dev/null

silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>
nnoremap <silent> <C-f> :call FindInNERDTree()<CR>

"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

"map to bufexplorer
nnoremap <leader>b :BufExplorer<cr>

"fugitive mappings
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gp :Git push<cr>

"map to CommandT TextMate style finder
"nnoremap <leader>t :CommandT<CR>


filetype plugin indent on

if &t_Co >= 256 || has("gui_running")
   colorscheme mustang
endif

if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif
