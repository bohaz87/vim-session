" 检查当前文件夹是否存在 .vim/session.vim，如果存在就自动加载该 session（仅在启动时没有参数时）
augroup LoadSessionIfExists
  autocmd!
  autocmd VimEnter * call session#LoadSession() 
augroup END


" 在 Vim 退出时自动保存会话到 .vim/session.vim
augroup AutoSaveSession
  autocmd!
  autocmd VimLeavePre * call session#SaveSession()
augroup END

