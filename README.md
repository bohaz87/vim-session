# Simple VIM Session Management

Auto load and save session for current folder.

* While start vim, load `session.vim` from `${currentFolder}/.vim/session.vim`
* Before quite vim, save session to `${currentFolder}/.vim/session.vim`

## Features
* [X] detect project root by package.json or .git, session will only be loaded is current folder is project root

## TOOD
* [ ] NERDTree restore state

