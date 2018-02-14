let Vital = vital#of('trello')
let s:HTTP = Vital.import('Web.HTTP')
let s:JSON = Vital.import('Web.JSON')

function! trello#util#get(path, params)
  let a:params['key'] = g:trello.api.key
  return s:HTTP.get(g:trello.api.base_url . a:path, a:params)
endfunction

function! trello#util#params_to_query(params)
  return s:HTTP.encodeURI(a:params)
endfunction
