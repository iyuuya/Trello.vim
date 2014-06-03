function! trello#authorize#connect()
  let params = trello#util#params_to_query({'name': 'Trello.vim', 'expiration': 'never', 'response_type': 'token', 'key': g:trello.api.key})
  let url = g:trello['api']['base_url'].'connect?'.params.'&scope=read,write'
  call openbrowser#open(url)

  let g:trello.config.token = input("Enter token: ")
  return g:trello.config.token
endfunction

