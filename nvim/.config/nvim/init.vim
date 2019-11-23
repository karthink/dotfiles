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
Plug 'KeitaNakamura/tex-conceal.vim'
Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-rsi'

" Theme
Plug 'chriskempson/base16-vim'

" For snippets
Plug 'sirver/ultisnips'
    let g:UltiSnipsSnippetDirectories=["/home/karthik/.config/nvim/"]
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
" Plug 'garbas/vim-snipmate'
" Plug 'honza/vim-snippets'

" Fuzzy-find integration
" Plug 'junegunn/fzf', { 'dir': '~/.config/fzf'}
Plug 'junegunn/fzf.vim'
" Alignment with gl{motion}{char}
Plug 'tommcdo/vim-lion'
" Exchange objects with cx{motion} cx{motion}
Plug 'tommcdo/vim-exchange'
" Search with s{char}{char}
Plug 'justinmk/vim-sneak'

"Visualstar mode
Plug 'thinca/vim-visualstar'
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
	set showcmd
        set formatoptions-=t
	:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Enable autocomplete:
	set wildmode=longest,list,full
" Disables automatic commenting on newline
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Goyo plugin makes text more readable when writing prose:
	" map <leader>v :Goyo \| set linebreak<CR>

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
	" map <leader>b :vsp<space>$BIB<CR>

" " Replace all is aliased to S
" 	nnoremap S :%s//g<left><left>

" Compile document, whatever type it is
	map <leader>cc :w! \| !compiler <c-r>%<CR><CR>

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
	nnoremap  <leader>e :e
	cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
	map <leader>ew :e %%
	map <leader>es :sp %%
	map <leader>ev :vsp %%
	map <leader>et :tabe %%

	nnoremap  <leader>`  :b#<CR>
	nnoremap  <leader>ff :Files<CR>
	nnoremap  <leader>fz :Files<CR>
	nnoremap  <leader>fr :History<CR>
	nnoremap  <leader>fl :Locate
	nnoremap  <leader>b  :Buffers<CR>
	nnoremap  <leader>bb  :Buffers<CR>
	nnoremap  <leader>bn :bn<CR>
	nnoremap  <leader>bp :bp<CR>
	nnoremap  <leader>bd :bd<CR>
	nnoremap  <leader>k  :bd<CR>
	nnoremap  <leader>/  :BLines<CR>
	nnoremap  <leader>// :BLines<CR>
	nnoremap  <leader>/b :Lines<CR>
	nnoremap  <leader>/a :Ag<CR>
	nnoremap  <leader>r  :Marks<CR>
	" nnoremap    :History:<CR>
	" nnoremap    :History/<CR>

"  Split navigation
	" nnoremap  <leader>V  :vsp<CR>:bn<CR><C-w><C-w>
	" nnoremap  <leader>v  :vsp<CR>:bn<CR>
	" nnoremap  <leader>vf :vsp<CR>:Files<CR>
	" nnoremap  <leader>vb :vsp<CR>:Buffers<CR>

"  Leader commands for writing and quitting:
	nnoremap <Leader>w :w<CR>
	nnoremap <leader>wq :wq<CR>
	nnoremap <leader>q :q<CR>

"  Diff current file
	nmap <leader>d :w !diff % -<CR>
" Write as root:
	" command W w !sudo tee % >/dev/null

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

" Jump out of insert mode with jj or jk
	inoremap jj <Esc>
	inoremap kj <Esc>

	" Airline font
	set guifont=Liberation\ Mono\ for\ Powerline\ 10
	let g:airline_powerline_fonts = 1

	" if !exists('g:airline_symbols')
	" 	let g:airline_symbols = {}
	" endif

	" " unicode symbols
	" let g:airline_left_sep = '»'
	" let g:airline_left_sep = '▶'
	" let g:airline_right_sep = '«'
	" let g:airline_right_sep = '◀'
	" let g:airline_symbols.linenr = '␊'
	" let g:airline_symbols.linenr = '␤'
	" let g:airline_symbols.linenr = '¶'
	" let g:airline_symbols.branch = '⎇'
	" let g:airline_symbols.paste = 'ρ'
	" let g:airline_symbols.paste = 'Þ'
	" let g:airline_symbols.paste = '∥'
	" let g:airline_symbols.whitespace = 'Ξ'
" " Open line above, below
" 	nnoremap [o O<Esc>j
" 	nnoremap ]o o<Esc>k
	let g:tex_flavor = 'latex'
	let g:vimtex_view_method='zathura'
	let g:vimtex_quickfix_mode=0
	set conceallevel=1
	let g:tex_conceal='abdmg'
