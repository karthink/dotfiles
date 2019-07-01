"       _
"__   _(_)_ __ ___  _ __ ___
"\ \ / / | '_ ` _ \| '__/ __|
" \ V /| | | | | | | | | (__
"  \_/ |_|_| |_| |_|_|  \___|
"
"
let mapleader =" "
let maplocalleader =","

call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'lervag/vimtex'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" For snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" Fuzzy-find integration
" Plug 'junegunn/fzf', { 'dir': '~/.config/fzf'}
Plug 'junegunn/fzf.vim'

call plug#end()

" Some basics:
	set nocompatible
	"filetype plugin on
	syntax on
	set path+=**
	set encoding=utf-8
	set number relativenumber
	set ignorecase
	set hlsearch incsearch smartcase
        set hidden
	:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Enable autocomplete:
	set wildmode=longest,list,full
" Disables automatic commenting on newline
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Goyo plugin makes text more readable when writing prose:
	map <leader>v :Goyo \| set linebreak<CR>

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Spell-check set to <leader>$
	map <leader>$ :setlocal spell! spelllang=en_us<CR>

" Splits open at the bottom and the right
	set splitbelow splitright

" Open bibliography file in split
	map <leader>b :vsp<space>$BIB<CR>

" Replace all is aliased to S
	nnoremap % :%s//g<left><left>

" Compile document, whatever type it is
	map <leader>c :w! \| !compiler <c-r>%<CR><CR>

" Open corresponding pdf/html or preview
	map <leader>p :!opout <c-r>%<CR><CR>

" Runs a script that cleans out tex build files whenever I close out of a .tex file
	autocmd VimLeave *.tex !texclear %

" Ensure files are read as I want:
	autocmd BufRead,BufNewFile *.tex set filetype=tex

" Readmes autowrap text:
	autocmd BufRead,BufNewFile *.md set tw=79

" Use urlscan to choose and open a url:
	:noremap <leader>u :w<Home>silent <End> !urlscan<CR>
	:noremap <leader>, :w<Home>silent <End> !urlscan<CR>

" Copy selected text to system clipboard (requires gvim though)
" vnoremap <C-c> "*Y :let @+=@*<CR>
" map <C-p> "+P

" Automatically delete all trailing whitespaces on save.
	autocmd BufWritePre * %s/\s\+$//e

" When shortcut files are updated, renew bash and ranger configs with new material:
	autocmd BufWritePost ~/.config/bm* !shortcuts

" Run xrdb whenever Xdefaults or Xresources are updated
	autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %

" Navigating with guides
	" inoremap <leader>n <Esc>/<\.\.><Enter>"_c4l

"  Leader commands for quick fuzzy access:
	nnoremap  <leader>f :Files<CR>
	nnoremap  <leader>b :Buffers<CR>
	nnoremap  <leader>bn :bn<CR>
	nnoremap  <leader>bp :bp<CR>
	nnoremap  <leader>bd :bd<CR>
	nnoremap  <leader>/  :Lines<CR>
" This is a <..> template
" How the <..> does this work?
" Who knows <..>
" <..>

" Moving blocks of text.
	vnoremap D :m ‘>1
	vnoremap U :m ‘<-2gv=gv<CR>

"  Auto-complete file names

" Insert mode completion
	imap <c-x><c-k> <plug>(fzf-complete-word)
	imap <c-x><c-f> <plug>(fzf-complete-path)
	imap <c-x><c-j> <plug>(fzf-complete-file)
	imap <c-x><c-l> <plug>(fzf-complete-line)
