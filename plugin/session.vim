function! IsProjectRoot()
  " 检查当前目录是否存在 .git 目录
  if isdirectory('.git')
    return 1
  endif

  " 检查当前目录是否存在 package.json 文件
  if filereadable('package.json')
    return 1
  endif

  " 如果以上两个条件都不满足，则当前目录不是项目根目录
  return 0
endfunction

if IsProjectRoot()
  " 检查当前文件夹是否存在 .vim/session.vim，如果存在就自动加载该 session（仅在启动时没有参数时）
  augroup LoadSessionIfExists
    autocmd!
    autocmd VimEnter * call session#LoadSession() 
    if (exists(':NERDTree'))
      autocmd VimEnter * NERDTree
    endif
  augroup END


  " 在 Vim 退出时自动保存会话到 .vim/session.vim
  augroup AutoSaveSession
    autocmd!
    if exists(':NERDTreeClose')
      autocmd VimLeave * NERDTreeClose
    endif
    autocmd VimLeave * call session#SaveSession()
  augroup END

endif
