set nocompatible "挙動をvi互換ではなく、vimのデフォルトに設定する"
source ~/dotfiles/vimrc/.vimrc.appearance
source ~/dotfiles/vimrc/.vimrc.basic
source ~/dotfiles/vimrc/.vimrc.bundle
source ~/dotfiles/vimrc/.vimrc.colors
source ~/dotfiles/vimrc/.vimrc.encoding
source ~/dotfiles/vimrc/.vimrc.indent
source ~/dotfiles/vimrc/.vimrc.plugins_setting
source ~/dotfiles/vimrc/.vimrc.search

" grep検索の実行後にQuickFix Listを表示する
autocmd QuickFixCmdPost *grep* cwindow

""""""""""""""""""""""""""""""
" 挿入モード時、ステータスラインの色を変更
""""""""""""""""""""""""""""""
let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'

if has('syntax')
  augroup InsertHook
    autocmd!
    autocmd InsertEnter * call s:StatusLine('Enter')
    autocmd InsertLeave * call s:StatusLine('Leave')
  augroup END
endif

let s:slhlcmd = ''
function! s:StatusLine(mode)
  if a:mode == 'Enter'
    silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
    silent exec g:hi_insert
  else
    highlight clear StatusLine
    silent exec s:slhlcmd
  endif
endfunction

function! s:GetHighlight(hi)
  redir => hl
  exec 'highlight '.a:hi
  redir END
  let hl = substitute(hl, '[\r\n]', '', 'g')
  let hl = substitute(hl, 'xxx', '', '')
  return hl
endfunction
""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" 自動的に閉じ括弧を入力
""""""""""""""""""""""""""""""
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
""""""""""""""""""""""""""""""
