" comment

" echo "hello, world"
set title        " ターミナルのタイトル
set number       " 行番号表示
set cursorline   " カーソル行を表示
set cursorcolumn " カーソル位置のカラム背景を変更
set expandtab    " タブの代わりにスペースを挿入
set laststatus=2 " ステータスバーを常に表示
set showmatch    " 対応する括弧を表示
set wrap         " 行を折り返す
set wrapscan     " 検索時に最後まで移動したら最初に戻る

set visualbell   " 警告音可視化
set virtualedit=onemore " 行末1文字先までカーソル移動

set smartindent  " インデントはスマートインデント
set autoindent   " どっち?

set ruler	 " ルーラー
set incsearch	 " incremental searchらしいがこれ何?
set hlsearch
set ignorecase
set hidden       " ファイルの保存なしで別ファイルを開く
set history=2000
set expandtab    " タブを空白で挿入
set tabstop=2
set shiftwidth=2
set paste

let g:molokai_original = 1

" キーバインド
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" 色設定
syntax on
