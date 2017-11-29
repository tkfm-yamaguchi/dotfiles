" ユーザ優先設定ファイル for kaoriya-(mac)vim
"
" このファイルが $HOME にある場合, kaoriya's vimrc ではサイトローカルな
" 設定を読み込んだ後, kaoriya の独自設定が適用される前のタイミングでこの
" ファイルを読み込む.
" このファイルで g:vimrc_first_finish を非 0 な値に設定することで, kaoriya
" の独自設定の読み込みは中止される(すぐに ~/.vim/vimrcの読み込みへ).

" migemo:
let $PATH = simplify($VIM . '/../../MacOS') . ':' . $PATH
set migemodict=$VIMRUNTIME/dict/migemo-dict
set migemo

" 印刷に関する設定:
set printmbfont=r:HiraMinProN-W3,b:HiraMinProN-W6
set printencoding=utf-8
set printmbcharset=UniJIS
" Lua interface with embedded luajit
exec "set luadll=".simplify(expand("$VIM/../../Frameworks/libluajit-5.1.2.dylib"))

" forbid to load kaoriya's original configuration
let g:vimrc_first_finish = 1
