nnoremap <silent> <LocalLeader>p :PresentingStart<CR>
nnoremap <silent> <LocalLeader>t :call Toc()<CR>

function! Toc()
  let l:line = search('Table of Contents', 'nc')
  execute l:line "mark C"
  let l:slide = search('\v^\d. slides\/\f*', 'nc')
  execute l:slide "mark S"
  nnoremap <silent> <LocalLeader>n 'SjmSkfsgf
endfunctio
