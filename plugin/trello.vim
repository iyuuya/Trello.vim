if exists('g:loaded_trello_vim')
  finish
endif

let s:save_cpo = &cpo
set cpo&vim

let g:trello = {
      \ 'api' : {
      \     'base_url' : 'https://api.trello.com/1/',
      \     'key' : '57a7352135f1ca61e1e578d3dd3d3538',
      \   },
      \ 'config' : {},
      \ }

command! TrelloConnect  :call trello#authorize#connect()

let g:loaded_trello_vim = 1

let &cpo = s:save_cpo
unlet s:save_cpo
