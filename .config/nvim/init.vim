" Init {{{
" Using the same setup of vim
set runtimepath^=~/.vim
set runtimepath^=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc
" }}}


"" Options {{{
augroup MyNvimInit
  autocmd!
augroup END

set guicursor=a:blinkon0 " cursor with no blink
" FIXME: Autocmd is not defined.

" set options for terminal window
" NOTE: because of the difference of terminal opening event name (vim:
" 'TerminalOpen', nvim: 'TermOpen'), here set the exactly same options
" as be written in vimrc.
autocmd MyNvimInit TermOpen * setlocal
\ norelativenumber
\ nonumber
\ foldcolumn=0
\ signcolumn=no

autocmd MyNvimInit TermOpen * startinsert
" }}}


"" Commands/Functions {{{
" Opening terminal with horizontaly/vertically splitting
command! -nargs=* Terminal split | terminal <args>
command! -nargs=* VTerminal vsplit | terminal <args>
command! -nargs=* TTerminal tabnew | terminal <args>
command! -nargs=* BTerminal botright split | resize 8 | terminal <args>
command! -nargs=* ZeroTerminal 0tabnew | terminal <args>
" }}}


"" Key Mappings {{{
" open terminal (overwrites vimrc settings)
nnoremap [prefix]tr :Terminal<CR>
nnoremap [prefix]tc :terminal<CR>
nnoremap [prefix]tv :VTerminal<CR>
nnoremap [prefix]tt :TTerminal<CR>
nnoremap [prefix]tb :BTerminal<CR>
nnoremap [prefix]t0 :ZeroTerminal<CR>
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
" - <C-d> doesn't scrolls after bottom line shown
"   - it can be scrolled in vim until bottom line reaching to the top of
"   window
