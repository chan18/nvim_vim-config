
" vim-Plug a vim plugin manager
" On-demand loading 
" parallel installation/update
call plug#begin('~/.vim/plugged')

" airline_theme and PLUGINS
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" On-demand load
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" web icons and fonts
Plug 'ryanoasis/vim-webdevicons'
Plug 'ryanoasis/powerline-extra-symbols'

" colorscheme
Plug 'altercation/vim-colors-solarized'
Plug 'spf13/vim-colors'
Plug 'tpope/vim-surround'
Plug 'flazz/vim-colorschemes'
Plug 'trevordmiller/nova-vim'

" PRODECTIVE plugins

" ctrlp
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'

" syntastic
Plug 'scrooloose/syntastic'

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" comment
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'

" JS
Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
Plug 'carlitux/deoplete-ternjs'


"Typescript Plugins
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Quramy/tsuquyomi', { 'do': 'npm install -g typescript' }
Plug 'mhartington/deoplete-typescript'

" HTML
Plug 'mattn/emmet-vim'
Plug 'gregsexton/matchtag'
Plug 'Valloric/MatchTagAlways'

" PHP
Plug 'EvanDotPro/vim-php-syntax-check'
Plug 'shawncplus/phpcomplete.vim'
Plug 'StanAngeloff/php.vim'


" laravel
Plug 'rafaelndev/deoplete-laravel-plugin', {'for': ['php'], 'do': 'composer install'}

" css


" autocomplete
Plug 'Shougo/deoplete.nvim'
Plug 'SirVer/ultisnips'

" colorscheme
Plug 'joshdick/onedark.vim'
Plug 'jyota/vimColors'
Plug 'sandeepsinghmails/Dev_Delight'
Plug 'tssm/fairyfloss.vim'
Plug 'roosta/vim-srcery'
Plug 'rakr/vim-one'

" snippets
Plug 'SirVer/ultisnips'

call plug#end()

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
syntax on
set ruler		" shows line number at bottom 
"set spell
set number
colorscheme fairyfloss
"colorscheme nova
set bg=dark
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
"set cursorline		" horizontal highlight
" copy-past from clip board
	if has('clipboard')
		set clipboard=unnamed
	endif


filetype plugin indent on

set encoding=utf-8	" use unicode/utf-8

set mouse=a                 " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing

scriptencoding utf-8

 "set autowrite                       " Automatically write a file when leaving a modified buffer
set shortmess+=filmnrxoOtT          " Abbrev. of messages (avoids 'hit enter')
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
set virtualedit=onemore             " Allow for cursor beyond last character
set history=1000                    " Store a ton of history (default is 20)
set spell                           " Spell checking on
set hidden                          " Allow buffer switching without saving
set showcmd                         " show the command

set iskeyword-=.                    " '.' is an end of word designator
set iskeyword-=#                    " '#' is an end of word designator
set iskeyword-=-                    " '-' is an end of word designator
set tabpagemax=15               " Only show 15 tabs
set showmode                    " Display the current mode

highlight clear SignColumn      " SignColumn should match background
highlight clear LineNr          " Current line number row will have same background color in relative mode

set backspace=indent,eol,start  " Backspace for dummies
set linespace=0                 " No extra spaces between rows
set number                      " Line numbers on
set showmatch                   " Show matching brackets/parenthesis
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set winminheight=1              " Windows can be 0 line high
set winheight=20
set winwidth=20
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when uc present
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set foldenable                  " Auto fold code
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set nowrap                      " Do not wrap long lines
set nowrap                      " Do not wrap long lines
set nowrap                      " Do not wrap long lines
set nowrap                      " Do not wrap long lines
set nowrap                      " Do not wrap long lines
set autoindent                  " Indent at the same level of the previous line
set shiftwidth=4                " Use indents of 4 spaces
set expandtab                   " Tabs are spaces, not tabs
set tabstop=4                   " An indentation every four columns
set softtabstop=4               " Let backspace delete indent
set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current

 " leader mapping
let mapleader = ','

" save
nmap <C-S> :update<CR>
nmap <F5> :so %<CR>
nmap <leader>tt :terminal<CR>

" easy windows mode
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_

" Neard tree
map <C-e> :NERDTreeToggle<CR>

 " Wrapped lines goes down/up to next row, rather than next line in file.
    noremap j gj
    noremap k gk

map <S-H> gT
map <S-L> gt

map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%
map <F5> :so %




" PLUGINS


" webicons config
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree =1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_ctrlp = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
" enable open and close folder/directory glyph flags (disabled by default with 0)
let g:DevIconsEnableFoldersOpenClose = 1
" enable pattern matching glyphs on folder/directory (enabled by default with 1)
let g:DevIconsEnableFolderPatternMatching = 1
" change the default folder/directory glyph/icon
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = 'ƛ'
" change the default open folder/directory glyph/icon (default is '')
let g:DevIconsDefaultFolderOpenSymbol = ''
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

" powerline
"let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts=1
set laststatus=2
" testing rounded separators (extra-powerline-symbols):
let g:airline_left_sep = "\uE0CE"
let g:airline_right_sep = "\uE0CF"

" set the CN (column number) symbol:
let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}' . "\uE0A3" . '%{col(".")}'])
"let g:airline_theme='base16_apathy'
"let g:airline_theme='silver'
set termguicolors

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" =================
" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" deoplete config
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#max_abbr_width = 0
let g:deoplete#max_menu_width = 0
let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})

" tern config
let g:tern_request_timeout = 1
let g:tern_request_timeout = 6000
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]
let g:deoplete#sources#tss#javascript_support = 1
let g:tsuquyomi_javascript_support = 1
let g:tsuquyomi_auto_open = 1
let g:tsuquyomi_disable_quickfix = 1

set completeopt+=noinsert

if has("gui_running")
    inoremap <silent><expr><C-Space> deoplete#mappings#manual_complete()
else
    inoremap <silent><expr><C-@> deoplete#mappings#manual_complete()
endif
