
function! session#LoadSession() 
  let l:session_dir = getcwd() . '/.vim'
  let l:session_file = session_dir . '/session.vim'
  echo l:session_file
  if argc() == 0 && filereadable(l:session_file)
    " source l:session_file
    execute 'source' l:session_file
  endif
endfunction

function! session#SaveSession()
  let l:session_dir = getcwd() . '/.vim'
  let l:session_file = session_dir . '/session.vim'
  if !isdirectory(l:session_dir)
    call mkdir(l:session_dir, 'p')
  endif
  execute 'mksession!' l:session_file
endfunction
