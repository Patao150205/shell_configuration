" デフォルトのシェル
set shell=/bin/zsh
" 連番
set number
" シフトの幅(カーソルの動く幅)
set shiftwidth=2
" タブと認識する幅
set tabstop=2
" タブをスペースに変える(githubの共有時に見た目が変わらないように)
set expandtab
" ワードラッピング(折返しの文字数)
set textwidth=0
" オートインデント
set autoindent
" サーチハイライト
set hlsearch
" 現在のファイルのエンコード
set encoding=utf-8
" 保存するファイルの設定する
set fileencoding=utf-8
" Vimが表示できる文字エンコーディングのリスト
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
" ヤンクをクリップボードに
"set clipboard=unnamed
" シンタックスハイライト
syntax on

call plug#begin()
" テーマ
Plug 'ntk148v/vim-horizon'
" NERDTree
Plug 'preservim/nerdtree'
" FZF(ファイル高速検索)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" 補完
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" ステータスライン
Plug 'itchyny/lightline.vim'
" シンタックスハイライト
" Plug 'sheerun/vim-polyglot'
call plug#end()

" if you don't set this option, this color might not correct
set termguicolors

colorscheme horizon

" lightline
let g:lightline = {}
let g:lightline.colorscheme = 'horizon'

" NERDTree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
