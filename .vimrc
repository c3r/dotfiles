"execute pathogen#infect()
"let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" Enables highlight syntax
syntax enable
set nofoldenable
 
" Sweet colorscheme
" colorscheme hybrid
set background=dark
 
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8
 
"" Display line numbers on the left
set number
 
"" Use mouse (only for resizing!)
set mouse=a
 
" Set the focus to the correct screen (ok, no more mouse thingies)
set mousefocus
 
" No more annoying sounds
set visualbell
 
" Do not scroll sideways unless we reach the end of the screen
set sidescrolloff=0

" Keep 3 lines below and above the cursor
set scrolloff=5
 
" highlight the status bar when in insert mode
if version >= 700
    if has("gui_running")
        au InsertEnter * hi StatusLine guifg=black guibg=green
        au InsertLeave * hi StatusLine guibg=black guifg=grey
    else
        au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
        au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
    endif
endif
 
" Infere the case-sensitivity
set infercase
 
" Need to set this flag on in order to have many cool features on
set nocompatible
 
" Indent properly based on the current file
filetype indent plugin on
filetype plugin on
 
" Pathogen load
"filetype off " Makes syntax non-working on office box
"call pathogen#infect()
"call pathogen#helptags()
 
" Switch between files in buffer
nnoremap <C-Tab> :bn<CR>
nnoremap <C-S-Tab> :bp<CR>
 
" Change default fontsize to fit MacBook Pro 13'
set guifont=Monaco:h13
 
" Don't select first Omni-completion option
set completeopt=longest,menuone
"set completeopt=menuone,longest,preview

set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set shiftwidth=4  " number of spaces to use for autoindenting
"set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set incsearch     " show search matches as you type
"set expandtab
set shiftwidth=4
set softtabstop=4
 
" Always set the current file directory as the local current directory
autocmd BufEnter * silent! lcd %:p:h
 
" Enable folding
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
 
set history=1000         " remember more commands and search history
set undolevels=1000      " use many levels of undo
 
" Tabs in command line mode behave like bash
set wildmode=longest,list,full
set wildmenu
 
" Highlight the entire word when searching for it
set hlsearch
 
"====[ Make tabs, trailing whitespace, and non-breaking spaces visible ]======
"exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
"set list
 
" Move line by line even when the line is wrapped
map j gj
map k gk
 
" Persistent undo
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

" Powerline
set rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim
set laststatus=2
set showtabline=2
set noshowmode
set t_Co=256

 
" YouCompleteMe
"let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"
"nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

