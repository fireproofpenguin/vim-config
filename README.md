# vim-config
This is my vim config for development, still missing some key plugins that I would like to add.

Theme is inspired by the 2077 theme for vscode.

Personally use this with iTerm2 and Fira Code font face / ligatures enabled.

## Missing
- COC (autocompletion)
- Some colors missing for js / ts keywords
- Haven't tested with a wide variety of languages yet

## Prerequisites
Requires vim 8+
```sh
brew install ripgrep
```

## Setup
Copy the vimrc file to `~/.vimrc` and copy the colors folder to `~/.vim/`.

Open up vim and run `:PlugInstall`

## Commands
The leader key has been mapped to ,

| Command | Action |
| ------- | ------ |
| ,m      | Opens NERDTree |
| ,p      | Formats code with prettier |
| ,.      | Opens recent files buffer |
| ,f      | Fuzzy file search |
