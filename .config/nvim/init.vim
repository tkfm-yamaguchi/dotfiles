" Init {{{
" Using the same setup of vim
set runtimepath^=~/.vim
set runtimepath^=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc
" }}}


"" Options {{{
set guicursor=a:blinkon0 " cursor with no blink

" set options for terminal window
" NOTE: because of the difference of terminal opening event name (vim:
" 'TerminalOpen', nvim: 'TermOpen'), here set the exactly same options
" as be written in vimrc.
Autocmd TermOpen * setlocal
\ norelativenumber
\ nonumber
\ foldcolumn=0
\ signcolumn=no

Autocmd TermOpen * startinsert
" }}}


"" Commands/Functions {{{
" Opening terminal with horizontaly/vertically splitting
command! -nargs=* Terminal split | terminal <args>
command! -nargs=* VTerminal vsplit | terminal <args>
command! -nargs=* TTerminal tabnew | terminal <args>
command! -nargs=* BTerminal botright split | resize 8 | terminal <args>
" }}}


"" Key Mappings {{{
" open terminal (overwrites vimrc settings)
nnoremap [prefix]tr :Terminal<CR>
nnoremap [prefix]tc :terminal<CR>
nnoremap [prefix]tv :VTerminal<CR>
nnoremap [prefix]tt :TTerminal<CR>
nnoremap [prefix]tb :BTerminal<CR>
" }}}


" TODO
" - colorings for the custom vim functions
"   - Autocmd
"   - AutocmdFT
" - cursor is something wrong in terminal buffer
"   - using mutibyte characters maybe occurrs something wrong
" - buffer/window moving from terminal buffer
"   - maybe someone has nice key-mappings
" - :terminal has different options/features from vim
"   - it doesn't a effect to splitting window
" - GUI interface on macOS / Linux ?
