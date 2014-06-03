function! trello#list#all(board_id)
  let path = 'boards/'.a:board_id.'/lists'
  let params = {
        \ 'filter' : 'open',
        \ 'fields' : 'name',
        \ }
  return trello#util#get_content(path, params)
endfunction
