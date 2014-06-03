function! trello#card#all(list_id)
  let path = 'lists/'.a:list_id.'/cards'
  let params = {
        \ 'filter' : 'open',
        \ 'fields' : 'name,desc,labels',
        \ }
  return trello#util#get_content(path, params)
endfunction
