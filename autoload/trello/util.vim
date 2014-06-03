let Vital = vital#of('trello')
let s:HTTP = Vital.import('Web.HTTP')

function! trello#util#params_to_query(params)
  return s:HTTP.encodeURI(a:params)
endfunction
