function! trello#board#all()
  let path = 'member/me/boards'
  let params = {
        \ 'filter' : 'open',
        \ 'fields' : 'name',
        \ }
  return trello#util#get_content(path, params)
endfunction
